// Calendarr Entry Task.cpp : This file contains the 'main' function. Program execution begins and ends there.


#include <iostream>
#include "Calendar.h"

int main()
{
	int year;
	while (true)
	{
		std::cout << "Input year:\n>";
		std::cin >> year;
		if (year > 0)
		{
			break;
		}
		std::cout << "Wrong input!" << std::endl;
	}

	Calendar calendar(year);
	calendar.printCalendar();
}
