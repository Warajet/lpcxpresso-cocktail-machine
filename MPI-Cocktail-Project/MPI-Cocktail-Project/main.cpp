#include "Dispenser.h"
#include "stdio.h"
#include "mbed.h"
#include "SPI_TFT_ILI9341.h"
#include "string"
#include "Ingredient.h"
#include "GUI.h"
#include <lpc17xx.h>
#include "Recipe.h"
#include "Ingredient.h"
#include <vector>

// the TFT is connected to SPI pin 5-7
SPI_TFT_ILI9341 TFT(P0_9, P0_8, P0_7, P0_6, P0_0, P0_1, "TFT"); // mosi, miso, sclk, cs, reset, dc

GUI gui = GUI(&TFT);


Dispenser* dispenser = new Dispenser();

PinName btn_start_stop = P2_6;
PinName btn_up = P2_7;
PinName btn_dn = P2_8;
PinName btn_next = P2_10;
PinName btn_back = P2_11;
PinName buzz_pin = P2_12;


InterruptIn btn_start_stop_int(btn_start_stop);
InterruptIn btn_up_int(btn_up);
InterruptIn btn_dn_int(btn_dn);
InterruptIn btn_next_int(btn_next);
InterruptIn btn_back_int(btn_back);

AnalogOut Aout(P0_26);
DigitalOut buzzer(buzz_pin);

Timer debounceCheck;
Timer countdownToHome;

volatile int currentState = 0; //0 = init, 1 = select recipe, 2 = select portion, 3 = summary, 4 dispensing, 5 done
volatile int currentSelectedRecipe = 0;
volatile int currentSelectedPortionVolume = 250;

//Create Ingredient
//vector <Ingredient*> ingredients;
//Ingredient* soda = new Ingredient("Soda", P2_0,28.5,1);
//Ingredient* vodka = new Ingredient("Vodka", P2_1,30,1);
//Ingredient* cola = new Ingredient("Cola", P2_2,20,1);
//Ingredient* lime = new Ingredient("Lime", P2_3,28.5,1);

Ingredient* soda = new Ingredient("Soda", P2_0,17.5,0.5);
Ingredient* blueHawaiiSyrup = new Ingredient("Blue Hawaii syrup", P2_1,16.5,0.5);
Ingredient* cola = new Ingredient("Cola", P2_2,15,0.5);
Ingredient* lime = new Ingredient("Lime juice", P2_3,15,0.5);

//Recipe
Recipe* limeSoda = new Recipe();
Recipe* colaLemon = new Recipe();
Recipe* blueHawaii = new Recipe();

//Dipenser test - recipe
Recipe* allIngredients = new Recipe();
Recipe* justSoda = new Recipe();
Recipe* justBlueHawaiiSyrup = new Recipe();
Recipe* justCola = new Recipe();
Recipe* justLime = new Recipe();




vector<Recipe*> recipes;

void createRecipe() {

	limeSoda->setName("Lime soda");
	limeSoda->addIngredient(lime, 0.25);
	limeSoda->addIngredient(soda, 0.75);
	limeSoda->setFileName("justLime.bmp");

	colaLemon->setName("Cola Lemon");
	colaLemon->addIngredient(lime, 0.25);
	colaLemon->addIngredient(soda, 0.75);
	colaLemon->setFileName("colaLemon.bmp");

	blueHawaii->setName("Blue Hawaii");
	blueHawaii->addIngredient(blueHawaiiSyrup, 0.25);
	blueHawaii->addIngredient(soda, 0.75);
	blueHawaii->setFileName("blueHawaii.bmp");


	allIngredients->setName("All ingredients");
	allIngredients->addIngredient(lime, 0.25);
	allIngredients->addIngredient(soda, 0.25);
	allIngredients->addIngredient(cola, 0.25);
	allIngredients->addIngredient(blueHawaiiSyrup, 0.25);




	//Test recipe
	justSoda->setName("Just Soda");
	justSoda->addIngredient(soda, 1.0);

	justLime->setName("Just lime");
	justLime->addIngredient(lime, 1.0);
	justLime->setFileName("justLime.bmp");

	justCola->setName("Just Cola");
	justCola->addIngredient(cola, 1.0);
	justCola->setFileName("justCola.bmp");

	justBlueHawaiiSyrup->setName("Just Blue Hawaii syrup");
	justBlueHawaiiSyrup->addIngredient(blueHawaiiSyrup,1);


	recipes.push_back(limeSoda);
	recipes.push_back(colaLemon);
	recipes.push_back(blueHawaii);
	recipes.push_back(justSoda);
	recipes.push_back(justLime);
	recipes.push_back(justCola);
	recipes.push_back(justBlueHawaiiSyrup);
	recipes.push_back(allIngredients);



	gui.setRecipesList(recipes);

}

void dispenseDrink() {
	dispenser->dispense(recipes.at(currentSelectedRecipe),
			currentSelectedPortionVolume);
//	dispenser->dispense(lime,10000);				//For flow test

}

bool isDebounce() {
	if (debounceCheck.read_ms() < 250) {
		return true;
	} else {
		debounceCheck.reset();
		return false;
	}
}

void updateGUI() {
	static int lastState = -1;
	static int lastSelectedRecipe = 0;
	static int lastSelectedPortionVolume = 250;

	if (lastState == currentState && lastSelectedRecipe == currentSelectedRecipe
			&& lastSelectedPortionVolume == currentSelectedPortionVolume
			&& currentState < 4) {
		return;
	}

	if (lastState != currentState)
		TFT.cls();

	if (currentState == 1) {
		gui.dispSelectRecipe(currentSelectedRecipe);
	}

	if (currentState == 2) {
		gui.dispSelectPortionSize(currentSelectedPortionVolume);
	}

	if (currentState == 3) {
		vector<pair<string, pair<float,int> > > summary_result =
				dispenser->calculate_each_pump(recipes.at(currentSelectedRecipe),currentSelectedPortionVolume);
		gui.dispSummary(currentSelectedRecipe, currentSelectedPortionVolume,
				summary_result);
	}
	if (currentState == 4) {
		gui.dispFillProgress(dispenser->getTotalDispenseProgress());

	}

	int stateGUIDelay = 2;//Wait for x seconds after drink has been dispensed before display "Done"
	if (currentState == 5) {
		gui.dispSuccess(stateGUIDelay + 10 - countdownToHome.read());
		if((int)(countdownToHome.read() ) % 2 == 0 &&  countdownToHome.read() < 8){
			buzzer = 1;
		}
		else{
			buzzer = 0;
		}
	}

//
	lastState = currentState;
	lastSelectedRecipe = currentSelectedRecipe;
	lastSelectedPortionVolume = currentSelectedPortionVolume;

	//Check fill progress, update GUI to "Done" state if progress is 100
	if (currentState == 4) {
		if (dispenser->getTotalDispenseProgress() == 100) {

			if (countdownToHome.read() > stateGUIDelay) {
				currentState = 5;
			}
			if (countdownToHome.read_ms() < 1) {
				countdownToHome.start();
			}
		}

	}

	//Check countdown progress, back to home page after 10s
	if (currentState == 5) {
		if (stateGUIDelay + 10 - countdownToHome.read() < 1) {
			currentState = 1;
			countdownToHome.stop();
			countdownToHome.reset();
		}
	}

}

void buzz(){
	buzzer = 1;
	wait_ms(50);
	buzzer = 0;

}


void onBtnUpPressed() {


	if (!btn_up_int.read())
		return;
	if (isDebounce())
		return;
	buzz();


	switch (currentState) {
	case 1:
		currentSelectedRecipe = (currentSelectedRecipe + 1) % recipes.size();
		break;

	case 2:
		currentSelectedPortionVolume += 50;
		break;

	}
}

void onBtnDnPressed() {


	if (!btn_dn_int.read())
		return;
	if (isDebounce())
		return;
	buzz();

	switch (currentState) {
	case 1:
		if (currentSelectedRecipe == 0) {
			currentSelectedRecipe = recipes.size() - 1;
		} else {
			currentSelectedRecipe = currentSelectedRecipe - 1;
		}
		break;

	case 2:
		if (currentSelectedPortionVolume > 50) currentSelectedPortionVolume -= 50;
		break;

	}

}

void onBtnNextPressed() {


//	if (!btn_next_int.read())
//		return;
	if (isDebounce())
		return;

	buzz();


	if (currentState == 3) {
			//Dispense drink from order
			dispenseDrink();
			currentState = 4;
		}

	if (currentState < 3)
		currentState++;

	if (currentState == 5) {
		currentState = 1;
		countdownToHome.stop();
		countdownToHome.reset();
	}

}



void onBtnBackPressed() {
//
//	if (!btn_back_int.read())
//		return;
	if (isDebounce())
		return;

	buzz();


	if (currentState != 1 && currentState < 4)
		currentState--;

}

void onStartStopButtonPressed() {

	if (!btn_start_stop_int.read())
		return;
	if (isDebounce())
		return;

	if (currentState == 3) {
		//Dispense drink from order
		dispenseDrink();
		currentState = 4;
	}

}

int main() {
	time_t seconds = time(NULL);
	set_time(1541154765);

	//Setup interrupt
//	btn_start_stop_int.rise(&onStartStopButtonPressed);
	btn_up_int.rise(&onBtnUpPressed);
	btn_dn_int.rise(&onBtnDnPressed);
	btn_back_int.rise(&onBtnNextPressed);
	btn_next_int.rise(&onBtnBackPressed);


	//setup dispenser
	dispenser->addIngredient(soda);
	dispenser->addIngredient(blueHawaiiSyrup);
	dispenser->addIngredient(lime);
	dispenser->addIngredient(cola);
	createRecipe();

	debounceCheck.start();

	currentState = 1;
	while (1) {
		seconds = time(NULL);
		dispenser->run();
		TFT.set_font((unsigned char*) Arial12x12);
		TFT.locate(10, 10);
		TFT.printf("%d %d s:%d r:%d p:%d db:%d    ", seconds, currentState, currentSelectedRecipe, currentSelectedPortionVolume, debounceCheck.read_ms());

		TFT.locate(160, 55);
//		TFT.printf("Soda : %d\%%  ", dispenser->getDispenseProgress(soda));
//		TFT.locate(160, 80);
//		TFT.printf("Vodka : %d\%%  ", dispenser->getDispenseProgress(vodka));

//		gui.dispFillProgress(dispenser->getDispenseProgress(soda));
		updateGUI();

		wait_ms(100);

	}

}
