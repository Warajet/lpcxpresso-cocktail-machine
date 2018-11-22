#pragma once
#include "mbed.h"
#include <string>

class Ingredient {

private:
	string name;
	PinName pin;
	PwmOut pwmOut;
	float flowRate;
	float dispenseSpeed;
public:
	    Ingredient(string name, PinName pinName, float flowrate, float dispenseSpeed);
	    PwmOut getPWMOut();
		PinName getPin();
		string getName();
		float getFlowRate();
		float getDispenseSpeed();
};
