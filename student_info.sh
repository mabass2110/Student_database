#!/bin/bash

# Info about my computer science students from students database

echo -e "\n~~ My Computer Science Students ~~\n"

#initializing and connecting to students db
PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
