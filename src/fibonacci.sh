#!/usr/bin/env bash

# Author: Jose Carlos Lopez Arriaga

fib() {
    if (( $1 == 0 )); then
      echo 0
    elif (( $1 == 1 )); then
      echo 1
    else
      echo $(( $(fib $(( $1 - 1))) + $(fib $(( $1 - 2 ))) ))
    fi
}

echo "Fibonacci Sequence"
read -p "Enter the number of months to know the number of rabbits: " n

for (( i=0; i<=$n; i++ )); do echo "Month: $i, number of rabbits: " $(fib "$i"); done
