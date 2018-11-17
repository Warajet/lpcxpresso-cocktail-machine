#include "GUI.h"
#include "Recipe.h"
#include "Dispenser.h"
#include <vector>


#include "GUI.h"
#include "Recipe.h"
#include "Dispenser.h"
#include <vector>

GUI::GUI(SPI_TFT_ILI9341* tft) {
	TFT = tft;

	TFT->claim(stdout);      // send stdout to the TFT display
	TFT->set_orientation(3);
	TFT->background(White);    // set background to black
	TFT->foreground(Black);    // set chars to white
	TFT->cls();                // clear the screen

	TFT->set_orientation(3);

}

// connect a sd-card to the second spi or use the local filesystem of the LPC
void GUI :: loadImageFromSDCard(string file_path, int start_horizontal, int start_vertical){
  int err = TFT->BMP_16(start_horizontal ,start_vertical , ("/sd/"+file_path+".bmp").c_str());  // load test.bmp from external SD-card
  TFT->set_font((unsigned char*) Arial12x12);
  TFT->locate(start_horizontal,start_vertical + 10);
  if (err != 1) {
	  TFT->printf(" - Err: %d",err);
  }
}
void GUI::dispFillProgress(int progress) {
	int startX = 80;
	int startY = 50;
	int topSize = 120;
	int bottomSize = 90;
	int height = 150;

	//Draw border
	for (int i = startY; i < height + startY; i++) {
		int width = bottomSize
				+ ((topSize - bottomSize) * ((height + startY) - i)
						/ (height + startY));

		TFT->pixel(startX - (width / 2) - 1, i, Black);
		TFT->pixel(startX + (width / 2) + 1, i, Black);

		if (i == height + startY - 1) {
			TFT->line(startX - (width / 2), i + 1, startX + (width / 2), i + 1,
			Black);
		}
	}

	//Fill
	int fillStartY = startY + (height * (1 - ((float) progress / 100))) + 10;
	for (int i = startY; i < height + startY; i++) {
		int width = bottomSize
				+ ((topSize - bottomSize) * ((height + startY) - i)
						/ (height + startY));
		if (i < fillStartY) {
			TFT->line(startX - (width / 2), i, startX + (width / 2), i, White);

		} else {
			TFT->line(startX - (width / 2), i, startX + (width / 2), i, Blue);

		}
	}

	TFT->set_font((unsigned char*) Arial24x23);

	TFT->locate(150, 30);
	TFT->printf("%d%% done.", progress);

}

void GUI::setDispState(int state) {

}

void GUI::dispSelectRecipe(int selectedIndex) {
	TFT->set_font((unsigned char*) Arial24x23);

	TFT->locate(12, 20);
	TFT->printf("Please select recipe");

	TFT->locate(40, 60);
	TFT->printf("= %d %s          ", selectedIndex,recipesList[selectedIndex]->getRecipeName().c_str());
}

void GUI::dispSelectPortionSize(int selectedPortionSize) {
	TFT->set_font((unsigned char*) Arial24x23);

	TFT->locate(12, 20);
	TFT->printf("Please set portion");

	TFT->locate(40, 60);
	TFT->printf("= %d ml ", selectedPortionSize);
}

void GUI::dispSummary(int selectedIndex, int selectedPortionSize, vector< pair<string, pair<float,int> > > summary_result) {
	TFT->set_font((unsigned char*) Arial12x12);


	TFT->locate(12, 30);
	TFT->printf("Summary: %s", recipesList.at(selectedIndex)->getRecipeName().c_str());
	for (int i = 0; i < summary_result.size(); i++) {
		TFT->locate(20, (i + 3) * 20);
		TFT->printf("Component: %s qty: %.2f ml time: %d\n",
				summary_result[i].first.c_str(), summary_result[i].second.first, summary_result[i].second.second);
	}
	TFT->set_font((unsigned char*) Arial24x23);
	TFT->locate(40, 180);
	TFT->printf("Total: %d ml", selectedPortionSize);

	TFT->locate(30, 180);
	TFT->printf("Press \"Start\" to begin", selectedPortionSize);
}

void GUI::dispSuccess(int timeLeftToHomepage) {
	TFT->set_font((unsigned char*) Arial24x23);
	TFT->locate(40, 210);
	TFT->locate(15, 30);
	TFT->printf("Done! Thank you");
	TFT->set_font((unsigned char*) Arial12x12);
	TFT->locate(50, 150);
	TFT->printf("Back to home page in %d seconds", timeLeftToHomepage);
}

void GUI::setRecipesList(vector<Recipe*> recipes){
	this->recipesList = recipes;
}
