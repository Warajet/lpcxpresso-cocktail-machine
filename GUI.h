
#pragma once
#include "mbed.h"
#include "SPI_TFT_ILI9341.h"
//#include "SDFileSystem.h"
#include "string"
#include "Arial12x12.h"
#include "Arial24x23.h"
#include "Arial28x28.h"
#include "font_big.h"
#include <string>
#include <lpc17xx.h>
#include "Recipe.h"
#include "Dispenser.h"
#include <vector>

const int totalRecipe = 5;
//SDFileSystem sd(P0_18, P0_17, P0_15, P0_16, "sd"); // mosi,miso,sck,cs

class GUI {

private:
      SPI_TFT_ILI9341* TFT ;
//      string recipes[totalRecipe] = {"Mojito", "Magarita",  "Cola", "Vodka Soda", "Lemon soda"};
       vector<Recipe*> recipesList;
public:
	    GUI(SPI_TFT_ILI9341* );
	    void loadImageFromSDCard(string file_path, int start_horizontal, int start_vertical);

	    void setDispState(int state);

	    void dispSelectRecipe(int selectedIndex);

	    void dispSelectPortionSize(int selectedPortionSize);

	    void dispSummary(int selectedIndex, int selectedPortionSize,  vector< pair<string, pair<float,int> > > summary_result );

	    void dispSuccess(int timeLeftToHomepage);
	    void dispFillProgress(int progress);

	    void setRecipesList(vector<Recipe*> recipeList);
};
