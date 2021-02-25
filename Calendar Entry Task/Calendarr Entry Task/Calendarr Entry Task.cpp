// Calendarr Entry Task.cpp : This file contains the 'main' function. Program execution begins and ends there.


#include <iostream>
#include "Calendar.h"

int main()
{
	int year;
	std::cout << "Input year:\n>";
	std::cin >> year;
	Calendar cal(year);
	cal.printCalendar();
}
