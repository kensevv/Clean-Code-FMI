#include "Calendar.h"

const int Calendar::findStartDay(const int year)
{ 
    int x1, x2, x3;
    x1 = (year - 1) / 4;
    x2 = (year - 1) / 100;
    x3 = (year - 1) / 400;
    return (year + x1 - x2 + x3) % 7;
}

void Calendar::fillMonths()
{
    /*
        January, March, May, July, August, October, December - 31 days.
        February - 28 days in a nonleap year and 29 days in a leap year.
        April, June, September, November - 30 days.
    */
    std::vector<std::string> allMonths = { "January", "February", "March", "April", "May", "June", "July",
                                            "August", "September", "October", "November", "December" };
    for (size_t i = 0; i < 12; i++)
    {   
        if (i == 0 || i == 2 || i == 4 || i == 6 || i == 7 || i == 9 || i == 11)
        {
            this->months.push_back(std::make_pair(allMonths[i], 31));
        }
        else if (i == 1) // February
        {
            int days = 28; // non-leap year
            if (isLeap(this->Year))
            {
                days = 29; // leap year
            }
            this->months.push_back(std::make_pair(allMonths[i], days));
        }
        else
        {
            this->months.push_back(std::make_pair(allMonths[i], 30));
        }
    }
}

bool Calendar::isLeap(int year)
{
    if (year % 400 == 0 || (year % 4 == 0 && year % 100 != 0))
        return true;
    return false;
}

const int Calendar::numberDaysInMonth(int month) const
{
    if (month >= 0 && month < 12)
    {
        return this->months[month].second;
    }
    return -1;
}

const std::string& Calendar::getMonthName(int month) const
{
    if (month >= 0 && month < 12)
    {
        return this->months[month].first;
    }
    return "";
}

void Calendar::printIntervals(int numberIntervals)
{
    for (size_t i = 0; i < numberIntervals; i++)
    {
        std::cout << " ";
    }
}

void Calendar::printMonth(int month, int & weekStartDay)
{
    std::cout << "~~~~~~  " << this->months[month].first << "  ~~~~~~" << std::endl;
    printWeekDayNames();
    for (size_t i = 0; i < weekStartDay; i++)
    {
        printIntervals(6);
    }
    for (size_t crrDay = 1; crrDay <= numberDaysInMonth(month); crrDay++)
    {
        
        std::cout << crrDay;
        if (crrDay > 9) printIntervals(4);
        else printIntervals(5);

        if (weekStartDay == 6)
        {
            std::cout << std::endl;
            weekStartDay = 0;
        }
        else
        {
            weekStartDay++;
        }
    }
    std::cout << std::endl;
}

void Calendar::printWeekDayNames()
{
    std::vector<std::string> dayNames = { "Sun","Mon", "Tue", "Wed", "Thu", "Fri", "Sat" };
    for (size_t i = 0; i < 7; i++)
    {
        std::cout << dayNames[i];
        printIntervals(3);
    }
    std::cout << std::endl << "---------------------------------------" << std::endl;
}

Calendar::Calendar(const int Year)
{
    this->Year = Year;
    this->startDay = findStartDay(this->Year);
    fillMonths();
}

void Calendar::printCalendar()
{
    int weekStartDay = this->startDay;

    for (size_t currentMonth = 0; currentMonth < 12; currentMonth++)
    {
        printMonth(currentMonth, weekStartDay);
        std::cout << std::endl;
    }
}
