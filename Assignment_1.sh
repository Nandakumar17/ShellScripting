#!/bin/bash
#1
echo "Hello, World!"

#2
echo "welcome"

#3 comment line
echo "comment line"

#4
: '
This is a
multi-line
comment.
'
echo "This line is not a comment."

#5. while loop
count=1
while [ $count -le 5 ]; do
    echo "Count: $count"
    ((count++))
done

#6. for loop
for i in {1..5}; do
    echo "Number: $i"
done

#7.Get User Input
echo "Enter your name:"
read name
echo "Hello, $name!"

#8.If Statement
n=10
if [ $n -eq 10 ]; then
    echo "n is equal to 10"
fi

#9.And Condition in If Statement
n=5
p=7
if [ $n -lt 10 ] && [ $p -lt 10 ]; then
    echo "Both n and p are less than 10"
fi

#10.Or Condition in If Statement
x=15
y=3
if [ $x -gt 10 ] || [ $y -gt 10 ]; then
    echo "At least one of x or y is greater than 10"
fi

#11.Else If and Else Condition:
age=25
if [ $age -lt 18 ]; then
    echo "You're a minor."
elif [ $age -ge 18 ] && [ $age -lt 65 ]; then
    echo "You're an adult."
else
    echo "You're a senior."
fi

#12.Case Condition:
day="Monday"
case $day in
    Monday)
        echo "It's the start of the week."
        ;;
    Friday)
        echo "It's the end of the week."
        ;;
    *)
        echo "It's a regular day."
        ;;
esac

#13.Get Arguments from Command Line
echo "First argument: $1"
echo "Second argument: $2"

#14.Get Arguments from Command Line with Names
while [[ $# -gt 0 ]]; do
    case "$1" in
        -n|--name)
            name="$2"
            shift 2
            ;;
        -a|--age)
            age="$2"
            shift 2
            ;;
        *)
            break
            ;;
    esac
done

echo "Name: $name"
echo "Age: $age"

#15.Combine Two Strings in a Variable:

first_name="John"
last_name="Doe"
full_name="$first_name $last_name"
echo "Full Name: $full_name"

#16. Get Substring of Strings:
string="Hello, World!"
substring="${string:0:5}"
echo "Substring: $substring"

#17.Add 2 Numbers into a Variable:
num1=10
num2=20
sum=$((num1 + num2))
echo "Sum: $sum"

#18. Create a Function:
say_hello() {
    echo "Hello!"
}

# Call the function
say_hello

#19.Use Function Parameters:
greet_person() {
    echo "Hello, $1!"
}

# Call the function with a parameter
greet_person "Alice"


#20.Pass Return Value from Script:
calculate_sum() {
    echo $(( $1 + $2 ))
}

result=$(calculate_sum 5 7)
echo "Sum: $result"

#21.Make Directory:
mkdir my_directory

#22.Make Directory by Checking Existence:
directory_name="my_directory"
if [ ! -d "$directory_name" ]; then
    mkdir "$directory_name"
fi

#23.Read a File:
file="my_file.txt"
while IFS= read -r line; do
    echo "Line: $line"
done < "$file"

#24.Delete a File:
file_to_delete="file_to_delete.txt"
if [ -f "$file_to_delete" ]; then
    rm "$file_to_delete"
fi

#25.
