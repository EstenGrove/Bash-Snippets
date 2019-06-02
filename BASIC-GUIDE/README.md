# A "Quick Start" Guide for Bash
Including: aliases, .bash_profile/.bashrc, conditionals, loops, variables and more.

###### __NOTE: Every script file must contain ```#!/bin/bash``` before any scripts are written. Otherwise you may place scripts in your .bash_profile or .bashrc file.__

### Aliases
- Allows commands to be referenced with a keyword
```bash
alias HOME='cd /Users/myusername'
```

### Functions
- The ```$1``` references the first argument passed to the function.
- ```$2``` references the second argument passed to the function and so on...

```bash
# Define function
greeting () {
  echo "Hello $1"
}

# Function invokation
greeting "Esten"

# Output
Hello Esten
```

### Variables

```bash
# Declaration
name="Esten"

# Usage (using the function from the above example)
greeting $name

# Output
Hello Esten
```

### Conditionals

##### Syntax
```bash
if [expression]; then
  # do something...
fi

# Example
if [num < 10]; then
  echo "$num is less than 10"
fi
```

### Loops: for, while, until

#### For Loop
- For every ```i``` in ```ls``` echo ```i```.
  - Basically, looop thru ```ls``` and print every item.
```bash
for i in $( ls ); do
  echo item: $i
done
```
###### For...in Loop 
```bash
# multi-line version
for f in log-*txt; do
  less $f;
done

# one-liner version
for f in log-*.txt; do less $f; done
```

###### For...in Loop w/ Variable
- a useful method in for loops is to store the list you want to loop thru in a variable first
```bash
FILES=log-*.txt
for f in $FILES; do
  echo $f
done
```

###### C-Type For Loop
- Same as the above for loop but different syntax.
```bash
for i in `seq 1 10`;
do
  echo $i
done  
```

#### While Loop
- While the ```COUNTER``` is less than(```-lt```) 10, print the ```COUNTER```'s value
```bash
COUNTER=0
while [  $COUNTER -lt 10 ]; do
  echo The counter is $COUNTER
  let COUNTER=COUNTER+1 
done
```

#### Until Loop
- Loop from then number 20 down to 10 in the ```COUNTER``` print the ```COUNTER```
```bash
COUNTER=20
until [  $COUNTER -lt 10 ]; do
  echo COUNTER $COUNTER
  let COUNTER-=1
done
```

## Using the "SELECT" Keyword to Make Menus
- This will create a "select" menu by looping thru each option in ```OPTIONS```, which allows the user to select an option.
```
OPTIONS="Hello Quit"
select opt in $OPTIONS; do
  if [ "$opt" = "Quit" ]; then
    echo done
    exit
  elif [ "$opt" = "Hello" ]; then
    echo Hello World
  else
  clear
    echo bad option
  fi
  done
```

## Reading User Input with ```READ```
```bash
echo "Please, enter your firstname and lastname"
read FN LN
echo "Hi $FN $LN!"
```
## Handling Arithmetic
```bash
echo $((1 + 1))

# Output
2

#### Alternate Syntax ####
echo $[1 + 1]

# Output
2
```
#### Arithmetic Comparison Operators
```bash
-lt (<)

-gt (>)

-le (<=)

-ge (>=)

-eq (==)

-ne (!=)
```

## Capture a Commands' Output
- This script will print all tables in a database(assuming MySQL is installed)
```bash
DBS=`mysql -uroot  -e"show databases"`
for b in $DBS ;
do
  mysql -uroot -e"show tables from $b"
done
```
## Using the ```BC``` Shell
- The ```BC``` Shell allows for bash scripts, arithmetic and other commands to run right from the terminal without a separate file;
```bash
# Start the Shell
bc -q
>enter some command here...

###### Examples ######

## Arithmetic
>1 + 1
# Output
2

## While Loop
>while(i != 10) { i = i + 1; print i }
# Output
12345678910

## Square Root
>sqrt(9)
3

# To Exit
>quit
```

