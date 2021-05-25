#! /bin/bash -x

wagePerHour=20
fullDayHour=8
partTime=4
dailyWage=$((wagePerHour * fullDayHour))
partTimeWage=$((wagePerHour * partTime))
employeeAttendance=$((RANDOM%2+1))
if(($employeeAttendance==1))
then
	echo "Employee is present"
	echo "The employee's salary for the current day is Rs.$dailyWage"
elif(($employeeAttendance==2))
then
	echo "Employee is having part time duty"
	echo "The employee's salary for the current day is Rs.$partTimeWage"
else
	echo "Employee is absent"
	echo "The employee's salary for the current day is Rs.0"
fi