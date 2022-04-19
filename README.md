# ISS ASSIGNMENT 1
## Roll No.: 2021101094
## Git Repository: https://github.com/akshatsanghvi211103/2021101094_ISS_Assignment1.git
## Q1 (Q1.sh)
### The input has been taken from "quotes.txt" & the output has been printed on the terminal
### We can remove the empty lines using the "awk" command and print all the rows where $1!="" (i.e., column 1 not an empty string)
### Now we can remove the duplicate lines using the "awk" command functionalities
### RUN: ./Q1.sh
## Q2 (Q2.sh)
### The input has been taken from "quotes.txt" & the output has been printed into a file called "speech.txt"
### The output rearranges the non-empty lines as required and prints them, using the "awk" command (delimiter is " ~" ... a space with a tilda)
### RUN: ./Q2.sh
## Q3 (Q3.sh)
### The input can been taken from any file & the output has been printed on the terminal. Thus it is nessecary to pass the filename also in the command line.
### a) We can get the file size (in bytes) using the "wc" command with the -c flag and then we use "awk" to get the first number
### b) We can get the number of lines (based on number of newline characters) in the file using the "wc" command with the -l flag and then we use "awk" to get the first number
### c) We can get the number of words in the file using the "wc" command with the -w flag and then we use "awk" to get the first number
### d) For getting the number of words in each file, we can create a word_count function which uses wc to return the number of words in each line read by the echo command
### e) For the repeated words and their count, we can again use the "awk" command functionalities
### RUN: ./Q3.sh <filename>
## Q4 (Q4.sh)
### The input has to be given from the terminal with numbers in the CSV format. The output is space seprerated (for CSV output, we can use the "sed" command (with /s to replace)).
### We can sort the numbers using bubble sort
### RUN: ./Q4.sh
## Q5 (Q5.sh)
### The input has to be be given in the terminal (even string length for case c) and the output for all the parts will be printed in the terminal
### a) Breaking the string and using the "for" loop to print accordingly
### b) Using the same logic for a) part and then using the "tr" command to replace all the characters (uppercase to uppercase/lowercase to lowercase) with their subsequent letter
### c) Breaking the string and using the "for" loop to print accordingly
### RUN: ./Q5.sh