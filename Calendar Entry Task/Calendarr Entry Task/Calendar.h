#pragma once
#include <iostream>
#include <vector>
#include <string>

class Calendar
{
private:
	int Year;
	int startDay;
	std::vector<std::pair<std::string, int>> months;

	const int findStartDay(const int Year);
	void fillMonths();
	bool isLeap(int Year);
	const int numberDaysInMonth(int month) const;
	const std::string& getMonthName(int month) const;
	void printIntervals(int numberIntervals);
	void printMonth(int month, int & weekStartDay);
	void printWeekDayNames();
public:
	Calendar(const int Year);
	void printCalendar();
};

