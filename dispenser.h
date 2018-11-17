#pragma once
#include "stdio.h"
#include "mbed.h"
#include "Ingredient.h"
#include "Recipe.h"
#include <climits>
#include "math.h"
const int maxIngredient = 4;
//const float flowrate = 29.166; //1750 ml/minute -> 29.166 ml/sec **OLD**
//const float flowrate = 7; //420 ml/minute -> 7 ml/sec **OLD**
const float flowrate = 25; // 1560 ml/minute -> 26 ml/sec **OLD**


class Dispenser {
private:
	vector<Ingredient*> ingredients;

	int ingredientStopTime[maxIngredient];
	int ingredientStartTime[maxIngredient];


//	vector<PwmOut> pwmOut(4);


//	int ingredientCount;
	time_t seconds;

public:

	Dispenser();
	float getTimeFromQuantity(float quantity);
	float getQuantityFromTime(float sec);
	vector< pair<string, pair<float, int> > > calculate_each_pump(Recipe* recipe,float quantity);

    void addIngredient(Ingredient* ingredient);
    int getIngredientIndex(Ingredient* ingredient);
	void dispense(int ingredientNo, int sec);			//Dispense liquid by ingredient's index
	void dispense(Ingredient* ingredient, int sec);		//Dispense liquid by ingredient's index
	void dispense(Recipe* recipe,float quantity);		//Dispense liquid by using recipe and quantity
	int getDispenseProgress(Ingredient* ingredient);	//Get the progress of dispensing that ingredient
	int getTotalDispenseProgress();						//Get the progress of dispensing all ingredient (Max time)
	void addIngredients(vector<Ingredient*> ingredientsVector);
	void run();

	void stopDispenseAll();
};

