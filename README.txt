Redirect is a simple utility that writes stdin to a file and to stdout.
The intended usage is to save a copy of user input to a program.  For
example:
    redirect myinput.txt | myprogram

will write all user input to the file "myinput.txt" and then send the
input to the program "myprogram".
