#include "Ingredient.h"

Ingredient::Ingredient(string name, PinName pinName):pwmOut(pinName){
		this->name = name;
		this->pin = pinName;

}

PinName Ingredient::getPin(){ return pin; }
PwmOut Ingredient::getPWMOut(){return pwmOut;}
string Ingredient::getName(){ return name; }
