#! /bin/bash -x

echo "Welcome to Employee Wage Computation Program"

employeeAttendance=$((RANDOM%2))
if(($employeeAttendance==1))
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi