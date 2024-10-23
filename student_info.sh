#!/bin/bash

# Info about my computer science students from students database

echo -e "\n~~ My Computer Science Students ~~\n"

#initializing and connecting to students db
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

# first and last names of students with gpa = 4
echo -e "\nFirst name, last name, and GPA of students with a 4.0 GPA:"
echo "$($PSQL "SELECT first_name, last_name, gpa FROM students WHERE gpa = 4.0")"