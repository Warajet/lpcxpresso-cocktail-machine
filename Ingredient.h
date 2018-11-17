#pragma once
#include "mbed.h"
#include <string>

class Ingredient {

private:
	string name;
	PinName pin;
	PwmOut pwmOut;
public:
	    Ingredient(string name, PinName pinName);
	    PwmOut getPWMOut();
		PinName getPin();
		string getName();
};
