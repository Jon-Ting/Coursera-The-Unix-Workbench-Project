#!/usr/bin/env bash

# Compute number of files in the directory excluding "." and ".."
num_f_in_d=$(ls -a| wc -l)-2

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
        ans_is_wrong=false
    fi
}

# Check if input provided is valid
function is_valid {
    is_val_num=true
    echo $1 | grep "^[0-9]*$" || is_val_num=false
    if [ -z $1 ]
    then
        is_val_num=false
    fi
}

# Ask users to guess the number until they guessed it right
ans_is_wrong=true
echo "Welcome to Jon's directory!"
echo "Please have a guess at the number of files this directory contains: "
while $ans_is_wrong
do
    read guessed_num_f
    is_valid $guessed_num_f
    if $is_val_num
    then
        eval_guess $guessed_num_f
    else
        echo " is not a valid number. Please provide a base 10 number instead!" && is_val_num=false
        continue
    fi
done

