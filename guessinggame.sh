count_files() {
  echo $(ls -1 | wc -l)
}

correct_answer=$(count_files)
guess=-1

echo "Welcome to the Guessing Game!"
echo "Guess how many files are in the current directory."

while [ $guess -ne $correct_answer ]; do
  read -p "Enter your guess: " guess
  if [ $guess -lt $correct_answer ]; then
    echo "Your guess is too low."
  elif [ $guess -gt $correct_answer ]; then
    echo "Your guess is too high."
  else
    echo "Congratulations! You guessed the correct number of files!"
  fi
done


