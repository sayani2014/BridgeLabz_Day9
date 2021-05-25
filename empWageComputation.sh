#! /bin/bash -x

wagePerHour=20
fullDayHour=8
partTime=4
dailyWage=$((wagePerHour * fullDayHour))
partTimeWage=$((wagePerHour * partTime))
employeeAttendance=$((RANDOM%2+1))

case $employeeAttendance in
	1)
		echo "Employee is present"
		echo "The employee's salary for the current day is Rs.$dailyWage"	
	;;
	2)
		echo "Employee is having part time duty"
		echo "The employee's salary for the current day is Rs.$partTimeWage"	
	;;
	0)
		echo "Employee is absent"
		echo "The employee's salary for the current day is Rs.0"
esac

