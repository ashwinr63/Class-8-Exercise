#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.
# Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit
# Then, capture the user selection.
# If the selection matches a supported operation, execute the operation.
# If the selection does not match a support operation, display an error message.
# When the operation is complete, redisplay the menu.

#Display the calculation
echo "Welcome to my Calculation"

#Initial value is set to 0 and state of the program is set to y=yes
res=0
process="y"
# Getting the Menu option for operation.
while [ $process = "y" ]
do
echo "1.Add"
echo "2.Subtract"
echo "3.Multiply"
echo "4.Divide"
echo "Enter Choice below: "
read choice
#bc is the standard Math library for a calculator program.
#Getting the user Choice of Numbers before the operation
echo "Please provide the first Number: "
read a
echo "Please provide the second Number: "
read b
case $choice in
1)res=$(echo "$a + $b" | bc -l)
echo "Result: " $res;;
2)res=$(echo "$a - $b" | bc -l)
echo "Result: " $res;;
3)res=$(echo "$a * $b" | bc -l)
echo "Result: " $res;;
4)res=$(echo "$a / $b" | bc -l)
echo "Result: " $res;;
*) echo "Your Choice is Invalid"
esac
#Do you want to continue message
echo "Do you want to continue"
read process
if [ $process != "y" ]
then
exit
fi
done