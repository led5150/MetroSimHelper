# metroSimHelper
/*****************************************************************************
* MetroSim Helper
* Comp 15
* README for metroSimHelper.cpp

* A fun program that allows you to create test command files for use with your 
 MetroSim implementation

*****************************************************************************/

Compile/run:
     
Compile using the provided Makefile by simply typing:

    make

Or use a custom compilation command:

    clang++ -Wall -Wextra -std=c++11 -o metroSimHelper metroSimHelper.cpp
    
Choose any excecutable name you like!  I realize metroSimHelper is 
long and annoying to type!  Make it your own.

run executable with:

    ./metroSimHelper fileToBeCreated numberOfPassengersToBeCreated

for example:

    ./metroSimHelper rand_command1.txt 100

will create a file called rand_command.txt with 100 random passengers
commands in it.


Program Purpose:

To help facilitate testing of MetroSim implementations, and because no one likes
typing "m m return p 2 3 return m m return p 12 23 return" etc. 100 times!

The program will create a text file with properly formatted commands for use
in testing your MetroSim implementation.  On the command line, the first 
argument is the name of the file you want created i.e. rand_command.txt and 
the second argument is the number of randomly generated passenger commands
you want in the file i.e. 100, or 10 or 23593 (seriously, try it, it's wild!).

The program will always ouput a passenger command, followed by a move metro 
command, "m m" until it runs out of passengers to be generated, where it will 
output enough move metro commands to ensure all your passengers get off the
train.

The final command output will always be metro finishes or "m f"

***************** IMPORTANT USAGE NOTES!!! PLEASE READ!! ********************

There are three constant variables of great importance in the .cpp file!!

The first is: 'const int NUMSTATIONS' 

  - By default this is set to '26', which is the number of stations provided
    in the stations.txt file we were given.  You MUST update this to reflect
    the exact number of stations you have in whatever file you are using as
    station input.  Otherwise, you may experience passengers who are trying
    to board at stations that don't exist!  Poor guys... worse than that
    your program may seg fault, have memory leaks, or just generally 
    display "undocumented behavior".  Please exercise caution! 

The second is: 'const bool USEFFILENAME'

  NOTE: This feature was for use with Comp15 2019 Fall version of the 
  assignment. Spring 2021 users can ignore this, and leave this boolean
  set to 'false'!

- By default this is set to false.  If this is true, the "f [filename]" 
  command will be printed into the command file.  It's position has been
  optimized to ensure that you have a close to even distribution between
  the two output files, to ensure that you are in fact printing to both
  files.  If this is set to false, then the "f [filename]" command will
  never be printed to the file.

The third is: 'const string NEWFILE'

  - By default this is set to "outB.txt".  If USEFFILENAME is true then the
    new output file your program will output to will be named outB.txt.  
    If outB.txt does not exist, don't worry! It will be created for you.

Obviously, if you change any of these variables, save, and recompile and
glorious, effort free command file creation shall be your reward!


******************* NEW FEATURE! Move Metro Only Mode *********************

You have the option of running in what I like to call Move Metro Only Mode!
To do so, run the program with '0' or a negative number of passengers in
the command line like so:

    ./metroSimHelper rand_command1.txt 0

You will be prompted to ask if you want to run in Move Metro Mode or if this
was a mistake and you'd like to quit.

If you type 'y', you will be asked how many Move Metro moves you would like 
to have printed to the file.  


Acknowledgements: 

for converting int to string: 
https://stackoverflow.com/questions/5590381/easiest-way-to-convert-int-to-string-in-c

for taking an int from command line:
https://stackoverflow.com/questions/2797813/how-to-convert-a-command-line-argument-to-int


Files: 

metroSimHelper.cpp

Data Structures:

Just a bunch of strings, ints and pointers to those things.

