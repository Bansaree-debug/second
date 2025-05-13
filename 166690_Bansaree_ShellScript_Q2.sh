#Create a script that checks if a given number is even or odd. (Take User Input )
#Author : Bansaree
#Created : 18/12/2024

 
#!/bin/bash
 
 
# Define the function first
check_even_odd() {
  number=$1  # Use the argument passed to the function
  if [[ $((number % 2)) -eq 0 ]]; then
    echo "$number is an Even number"
  else
    echo "$number is an Odd number"
  fi
}
 
# Main code to read input
read -p "Enter a number: " input
 
# Validate if the input is a valid integer
if [[ "$input" =~ ^-?[0-9]+$ ]]; then
  # Call the function to check if the number is even or odd
  check_even_odd $input
else
  echo "Invalid input! Please enter a valid integer."
fi 
