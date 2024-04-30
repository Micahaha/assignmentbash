#! /bin/bash

# Values msut be enclosed in parenthesis and seperated by spaces.

# Retriveal of a value relies on using the index just as it does
# in other programming languages. The first index number is 0.

# Create an array of the two data sets.
items=("0 value" "Partridge in a Pear Tree" "Turtle Dove" "French Hen" "Calling Bird" "Gold Ring" "Geese a Laying" "Swans a Swimming" "Maides a Milking" "Ladies Dancing" "Lords A Leaping" "Piper Piping" "Drummer Drumming")
costs=("0 value" "15" "27" "15" "14" "9" "25" "5" "7" "18" "14" "27" "26")



# enter an input that is read by the user
read -p 'Please input a number ''(1-12)'':' num


## check if the number is greater than 12 or less than 0 
if [ $num -gt 12 ] || [ $num -le 0 ]
then
    # Display message 
    echo number is out of range
else
    # Display the values chosen from the array
    echo Number "${num}"
    echo Item "${items[$num]}"
    echo Cost '$'"${costs[$num]}"


    #! /bin/bash

    # Computes and returns the total cost of all items 
    # starting with the first and continuing up 
    # to and including the item at the input number.

    get_total_cost () {
        # You must update this return statement so that
        # it returns the computed total cost.
        sum=0
        counter=$num

        while [ $counter -ge 1 ]
    do 
        # Display value in counter variable and a space
        # -n tells echo that a newline should not be appended to the
        # end
        (( sum += ${costs[$counter]} ))
        # Decrement the counter variable
        ((counter--))
    done 

    return $sum
    }

    get_total_cost
    # The $? contains the return value of the previously called function.
    total=$?
    echo Total '$'${total}
fi
 


