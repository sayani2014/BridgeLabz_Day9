#! /bin/bash -x

echo "Welcome to Employee Wage Computation Program"

wagePerHour=20
fullDayHour=8
dailyWage=$((wagePerHour * fullDayHour))
employeeAttendance=$((RANDOM%2))
if(($employeeAttendance==1))
then
	echo "Employee is present"
	echo "The employee's salary for the current day is Rs.$dailyWage"
else
	echo "Employee is absent"
	echo "The employee's salary for the current day is Rs.0"
fi