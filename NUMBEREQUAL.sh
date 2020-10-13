#!/bin/bash

scores="highscores"
b=0
a=$(shuf -i 1-128 -n 1)

counter=0

while true; do
read -p "Enter a number between 0-128: " b  
  if (( b > a ));
then
  echo "Guess lower"
  counter=$((counter + 1))
elif (( b < a )); then
  echo "Guess higher"
  counter=$((counter + 1))
elif  (( b == a )); then
  echo "You guessed correctly!"
  echo "Took $counter tries"
  break

fi
done

read -p "Enter your name to keep score: " userName

echo $userName $counter >> $scores

echo -e "High Scores: "
cat $scores


