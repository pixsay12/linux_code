#!/bin/bash

# step 1 - read from an existing csv
# step 2 - make a new array/column
# step 3 - save the new array into a txt file
# step 4 - merge with "paste"


# save array_table.csv into a variable
csv_file="./arrays_table.csv"


# parse table columns into 3 arrays
column_0=($(cut -d "," -f 1 $csv_file))
column_1=($(cut -d "," -f 2 $csv_file))
column_2=($(cut -d "," -f 3 $csv_file))


# print
echo "${column_0[@]}"


#create new column
column_3=("column_3")


check_line=$(cat $csv_file | wc -l)
check_line_2=$(wc -l < $csv_file)
echo "first option: $check_line"
echo "second option: $check_line_2"


#populate array/columns
for ((i=1; i<$check_line;i++)); do
    column_3[$i]=$((column_2[$i] - column_1[$i]))
done


# print
echo "${column_3[@]}"


# combine the new column with an existing csv and make a new csv from it
echo "${column_3[0]}" > column_3.txt
for ((i=1; i<check_line; i++)); do
  echo "${column_3[$i]}" >> column_3.txt
done


paste -d "," $csv_file $column_3.txt > report.csv
