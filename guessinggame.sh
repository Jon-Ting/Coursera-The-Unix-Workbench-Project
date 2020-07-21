#!/usr/bin/env bash

# Compute number of files in directory
num_f_in_d=$(ls -1| wc -l)

# Function to evaluate the answer and giving hints
function eval_guess {
    if [[ $1 -gt $num_f_in_d ]]
    then
        echo "Nope, it's less than that! Try again."
    elif [[ $1 -lt $num_f_in_d ]]
    then
        echo "Nope, it's more than that! Try again.."
    else
        echo "Yup, you guessed it right! Congratulations!"
    fi
}

# Ask users to guess the number until they guessed it right
guessed_num_f=0
while [[ $guessed_num_f -ne $num_f_in_d ]]
do
    echo "Welcome to Jon's directory!"
    echo "Please have a guess at the number of files this directory contains: "
    read guessed_num_f
    eval_guess $guessed_num_f
done

