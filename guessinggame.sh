#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
  echo $(ls -1 | wc -l)
}

# Main game loop
correct_answer=$(count_files)
guess=-1

echo "Welcome to the Guessing Game!"
echo "Guess how many files are in the current directory."

while [ $guess -ne $correct_answer ]; do
  # Ask the user for a guess
  read -p "Enter your guess: " guess

  # Check if the guess is too high, too low, or correct
  if [ $guess -lt $correct_answer ]; then
    echo "Your guess is too low."
  elif [ $guess -gt $correct_answer ]; then
    echo "Your guess is too high."
  else
    echo "Congratulations! You guessed the correct number of files!"
  fi
done


