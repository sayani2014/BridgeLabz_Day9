#! /bin/bash -x

wagePerHour=20
fullDayHour=8
partTime=4
hoursPerDay=0
read -p "Enter the total working hours: " totalWorkingHours
read -p "Enter the total working days: " totalDays
dailyWage=$((wagePerHour * 100 * 20))
partTimeWage=$((wagePerHour * 100 * 20 / 2))
employeeAttendance=$((RANDOM%2+1))

workingHoursFulltime () {
	hoursPerDay=$((totalWorkingHours / totalDays))
	echo "Work hours per day: $hoursPerDay"
}
workingHoursParttime () {
	hoursPerDay=$((totalWorkingHours / totalDays / 2))
	echo "Work hours per day: $hoursPerDay"
}

case $employeeAttendance in
	1)
		echo "Employee is present today"
		if(($totalWorkingHours>=100 || $totalDays==20))
		then
			echo "The employee's salary for the month is Rs.$dailyWage"
			workingHoursFulltime
		else
			echo "Working limits not completed"
		fi	
	;;
	2)
		echo "Employee is having part time duty today"
		if(($totalWorkingHours>=100 || $totalDays==20))
		then
			echo "The employee's salary for the month is Rs.$partTimeWage"
			workingHoursParttime
		else
			echo "Working limits not completed"
		fi			
	;;
	0)
		echo "Employee is absent"
		echo "The employee's salary for the month is Rs.0"
esac

