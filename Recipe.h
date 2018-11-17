#pragma once
#include "stdio.h"
#include "mbed.h"
#include "Ingredient.h"
#include <hash_map>
#include <vector>

class Recipe {
private:
	string name = "-";
	vector< pair<Ingredient* ,float> > IngredientPortion;

public:
	   Recipe();
	   Recipe(string name, vector< pair<Ingredient* ,float> > recipe);
	   string getRecipeName();
	   vector<string> getIngredients_in_recipe();
	   vector<pair <Ingredient*,float> > getIngredient_portion();
	   void addIngredient(Ingredient* ingredient,float portion);
	   void setName(string name);

	   void createVodkaGimlet();
	   void createVodkaVanilla();
	   void createCocaCola();
	   void createLimeJuice();


};
