#!/bin/bash

calculate() {
    case $2 in
        +) echo "$1 + $3 = $(($1 + $3))" ;;
        -) echo "$1 - $3 = $(($1 - $3))" ;;
        \*) echo "$1 * $3 = $(($1 * $3))" ;;
        /) 
            if [ $3 -eq 0 ]; then
                echo "Error: Division by zero"
            else
                echo "$1 / $3 = $(($1 / $3))"
            fi
            ;;
        %) echo "$1 % $3 = $(($1 % $3))" ;;
        *) echo "Invalid operator. Use +, -, *, /, or %." ;;
    esac
}

while true; do
    echo "Welcome to the Bash Calculator!"
    read -p "Enter the first number (or type 'exit' to quit): " num1
    if [[ $num1 == "exit" ]]; then
        echo "Exiting the calculator. Goodbye!"
        break
    fi
    read -p "Enter operator (+, -, *, /, %): " operator
    read -p "Enter the second number: " num2
    calculate $num1 $operator $num2
    echo ""
done

