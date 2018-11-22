#include "Dispenser.h"


Dispenser::Dispenser() {
	dispenseTimer.start();
	ms_counter = dispenseTimer.read_ms();
}

void Dispenser::addIngredient(Ingredient* ingredient) {
	//		pwmOut[totalIngredient] = new PwmOut(P2_0);
		ingredientStartTime[ingredients.size()] = 0;
		ingredientStopTime[ingredients.size()] = 0;

		ingredients.push_back(ingredient);
}
void Dispenser::addIngredients(vector<Ingredient*> newIngredients){
	ingredients.insert(ingredients.end(), newIngredients.begin(), newIngredients.end());		//Append vector

}

int Dispenser:: getIngredientIndex(Ingredient* ingredient){
	for(int i = 0; i < ingredients.size(); i++){
			if (ingredients[i] == ingredient){
				return i;
			}
		}
	return -1;
}

void Dispenser::dispense(int ingredientNo, int ms) {
	ingredientStartTime[ingredientNo] = ms_counter;
	ingredientStopTime[ingredientNo] = ms + ms_counter;
}

void Dispenser::dispense(Ingredient* ingredient, int sec) {
	dispense(this->getIngredientIndex(ingredient),sec);
}


vector< pair<string, pair<float, int> > > Dispenser :: calculate_each_pump(Recipe* recipe,float quantity)
{
	 vector< pair<Ingredient* ,float> > recipe_portion_list = recipe->getIngredient_portion();
	 vector< pair<string, pair<float, int> > > result_components;

	 for(int i = 0; i < recipe_portion_list.size(); i++)
	 {
		 pair<string, pair<float, int> > tmp;
		 float qty = recipe_portion_list[i].second * quantity;
//		 int time_taken = (qty / flowrate) * 1000;				//non - dynamic flowrate
     	  int time_taken = (qty / (recipe_portion_list[i].first->getFlowRate())) * 1000;		//Dynamic flow rate for each ingredient

		 pair<float, int> qty_time;
		 qty_time = make_pair(qty, time_taken);
		 tmp = make_pair(recipe_portion_list[i].first->getName(), qty_time);
		 result_components.push_back(tmp);
	 }
	 return result_components;

}

// Dispense by recipe
void Dispenser :: dispense(Recipe* recipe,float quantity)
{
	 vector< pair<Ingredient* ,float> > recipe_portion_list = recipe->getIngredient_portion();
	 vector< pair<string, float> > result_components;
	 for(int i = 0; i < recipe_portion_list.size(); i++)
	 {
		 pair<string, float> tmp;
		 float qty = recipe_portion_list[i].second * quantity;
		 tmp = make_pair(recipe_portion_list[i].first->getName(), qty);
		 result_components.push_back(tmp);
//		 int time_taken = (qty / flowrate) * 1000;		//non - dynamic flowrate
		  int time_taken = (qty / (recipe_portion_list[i].first->getFlowRate())) * 1000;		//Dynamic flow rate for each ingredient


		 dispense(recipe_portion_list[i].first, time_taken);
	 }
}

void Dispenser::run() {
	ms_counter = dispenseTimer.read_ms();
	for (int i = 0; i < ingredients.size(); i++) {
		if (ingredientStopTime[i] > ms_counter) {
			ingredients[i]->getPWMOut().write(ingredients[i]->getDispenseSpeed());
		} else {
			ingredients[i]->getPWMOut().write(0);

		}
	}
}

void Dispenser::stopDispenseAll() {
	for (int i = 0; i < ingredients.size(); i++) {
		ingredientStopTime[i] = 0;
	}
}

int  Dispenser::getDispenseProgress(Ingredient* ingredient){
	int index = this->getIngredientIndex(ingredient);
	if (index == -1)
		return -1;

	if(ingredientStopTime[index] <= ms_counter){
		return 100;
	}
	else{
		return 100 - (((float)(ingredientStopTime[index] - ms_counter) / (ingredientStopTime[index] - ingredientStartTime[index]))*100);
	}

}

int Dispenser :: getTotalDispenseProgress()
{
	int min = INT_MAX;
	for(int i = 0; i < ingredients.size(); i++)
	{
		if(getDispenseProgress(ingredients[i]) < min)
		{
			min = getDispenseProgress(ingredients[i]);
		}
	}
	return min;
}
//
//float Dispenser :: getTimeFromQuantity(float quantity)
//{
//	return quantity/flowrate;
//}
//
//float Dispenser :: getQuantityFromTime(float time)
//{
//	return time * flowrate;
//}



