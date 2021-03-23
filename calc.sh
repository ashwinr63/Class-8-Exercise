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
while [$process = "y"]
do
echo "1.Add"
echo "2.Subtract"
echo "3.Multiply"
echo "4.Divide"
read choice
case $choice in
1)res=$(echo "$a + $b" | bc - 1)
echo "After Addition =" $res
;;
2)res=$(echo "$a - $b" | bc - 1)
echo "By Subtracting =" $res
;;
3)res=$(echo "$a * $b" | bc - 1)
echo "Product is =" $res
;;
4)res=$(echo "$a / $b" | bc - 1)
echo "Division value is =" $res
;;
*) echo "Your Choice is Invalid"
esac
echo "Please press y if you want to Continue"
read process
if [$process !="y"]
then
exit
fi
done