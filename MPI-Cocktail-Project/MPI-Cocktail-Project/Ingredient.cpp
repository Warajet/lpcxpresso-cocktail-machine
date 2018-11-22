#include "Ingredient.h"

Ingredient::Ingredient(string name, PinName pinName ,float flowRate = 25, float dispenseSpeed = 1.0):pwmOut(pinName){
		this->name = name;
		this->pin = pinName;
		this->flowRate = flowRate;
		this->dispenseSpeed = dispenseSpeed;

}

PinName Ingredient::getPin(){ return pin; }
PwmOut Ingredient::getPWMOut(){return pwmOut;}
string Ingredient::getName(){ return name; }
float Ingredient::getFlowRate(){return flowRate;}
float Ingredient::getDispenseSpeed(){return dispenseSpeed;}
