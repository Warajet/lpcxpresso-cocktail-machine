#include "Recipe.h"
#include "Dispenser.h"

Recipe:: Recipe()
{
	this->name = "";
	this->IngredientPortion = {};
}

Recipe::Recipe(string name, vector< pair<Ingredient* ,float> > ingredient_portion)
{
	this->name = name;
	this->IngredientPortion = ingredient_portion;
}

Recipe::Recipe(string name, vector< pair<Ingredient* ,float> > ingredient_portion,string fileName)
{
	this->name = name;
	this->IngredientPortion = ingredient_portion;
	this->fileName = fileName;
}

void Recipe::setName(string name)
{
	this->name = name;
}

string Recipe:: getRecipeName()
{
	return this->name;
}

vector<string> Recipe:: getIngredients_in_recipe()
{
	vector<string> tmp;
	for(int i = 0; i < this->IngredientPortion.size() ;i++)
	{
		tmp.push_back(IngredientPortion[i].first->getName());
	}
	return tmp;
}

vector< pair<Ingredient* ,float> > Recipe:: getIngredient_portion()
{
	return this->IngredientPortion;
}

void Recipe:: createCocaCola()
{
	setName("Coca Cola");
	this->IngredientPortion.clear();
	pair<Ingredient* , float> cola = make_pair(new Ingredient("Cola", P2_0,25,1), 1.00);
	this->IngredientPortion.push_back(cola);

}

void Recipe:: createLimeJuice()
{
	setName("Lime Juice");
	this->IngredientPortion.clear();

	pair<Ingredient* , float> lime = make_pair(new Ingredient("Lime", P2_2,25,1), 1.00);
	this->IngredientPortion.push_back(lime);
}

void Recipe:: createVodkaGimlet()
{
	setName("Vodka Gimlet");
	this->IngredientPortion.clear();
	pair<Ingredient* , float> cola = make_pair( new Ingredient("Cola", P2_0,25,1), 0.714);
	pair<Ingredient* , float> vodka = make_pair( new Ingredient("Vodka", P2_1,25,1) , 0.143);

	this->IngredientPortion.push_back(cola);
	this->IngredientPortion.push_back(vodka);
}

void Recipe:: createVodkaVanilla()
{
	setName("Vodka Vanilla");
	this->IngredientPortion.clear();
	pair<Ingredient* , float> cola = make_pair( new Ingredient("Cola", P2_0,25,1) , 0.658);
	pair<Ingredient* , float> vodka = make_pair( new Ingredient("Vodka", P2_1,25,1) , 0.263);
	pair<Ingredient* , float> lime = make_pair( new Ingredient("Lime", P2_2,25,1) , 0.079);

	this->IngredientPortion.push_back(cola);
	this->IngredientPortion.push_back(vodka);
	this->IngredientPortion.push_back(lime);
}

void Recipe:: addIngredient(Ingredient* ingredient,float portion)
{
	pair<Ingredient* ,float> ingredient_pair = make_pair(ingredient, portion);
	if(portion >= 0 && portion <=  1){
		IngredientPortion.push_back(ingredient_pair);
	}
}


string Recipe:: getFileName(){
	return fileName;
}

void Recipe:: setFileName(string filename){
	this->fileName = filename;
}



