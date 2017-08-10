#!/usr/bin/env bash
# File: guessinggame.sh

function leave_space {
  echo " "
}


echo "This is the guessing game"
echo "How many files do you think are there in this directory?"
leave_space

n_files=$(ls | wc -l)
files=-1

while true
do
  echo "Enter number and press enter"
  read files
  echo "You entered the number: $files"
  if [[ $files -gt $n_files ]]
  then
    echo "$files is bigger than the number of files in this directory"
    leave_space
  elif [[ $files -lt $n_files ]]
  then
    echo "$files is smaller than the number of files in this directory"
    leave_space
  else
    echo "Congratulations! $files is the correct number of files"
    break
  fi
done
