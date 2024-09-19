# Assignment 1 - Bash workshop

This assignment is graded with a *pass*/*fail* grade. To *pass* the assignment, you need to complete all the exercises.

## [Introduction](#introduction)

Complete all the exercises in this document. Paste both the bash scripts and the output of those scripts in the corresponding sections.

> To complete the exercises you'll need to find the right commands to use. **Searching the internet is the only way to go**. You can also use `man` to find more information about a specific command. For instance `man grep` will show you the manual page for the `grep` command in the terminal.

> To get help about built-in bash commands you can use the `help` command. For instance `help if` will show you the help page for the `if` statement in bash. (Make sure you are actually running in the bash shell before using the `help` command.)

## [Exercises](#exercises)

### [Exercise 1](#exercise-1)

Create a bash script that prints the following information in this order:

- The current date and time.
- The user that is executing the script.
- The path to the user's home directory.
- The path to the current working directory.
- The terminal type.
- The shell used by the user.
- The contents of the PATH variable.
- The physical memory available in the system.
- The number of CPU cores in the system.


The following commands will be useful for this exercise: `echo`, `date`, `whoami`, `id -un`, `pwd`, `free`, `nproc`.
Also, you'll need to use the following environment variables: `HOME`, `TERM`, `SHELL`, `PATH`.

When printing information, make it as clear as possible. For example, if you are printing the current date and time, you can print it like this:

```
Current date and time: 2021-09-01 10:00:00
```

Solution:
    
```bash
#!/bin/bash
echo "----------------------------"

echo "Current date and time: $(date)"

echo "----------------------------"

echo "The user is : $(whoami)"

echo "----------------------------"

echo "The home directory is : $(eval echo ~)"

echo "----------------------------"

echo "The current directory is : $(pwd)"

echo "----------------------------"

echo "The current terminal is : $TERM"

echo "----------------------------"

echo "The current Shell is : $SHELL"

echo "----------------------------"

echo "The content of the PATH variable is : $PATH"

echo "----------------------------"

echo "The avaible memory is : $(free -h)"

echo "----------------------------"

echo "The total number of CPU cores are : $(nproc --all)"
```

My output:
(Paste the output of your script below)


```text
----------------------------
Current date and time: Wed Sep 18 12:46:03 CEST 2024
----------------------------
The user is : paul
----------------------------
The home directory is : /home/paul
----------------------------
The current directory is : /mnt/d/OneDrive/Desktop/Year 4/SET/Week 1
----------------------------
The current terminal is : xterm-256color
----------------------------
The current Shell is : /bin/bash
----------------------------
The content of the PATH variable is : /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/wsl/lib:/mnt/c/Program Files/WindowsApps/CanonicalGroupLimited.Ubuntu22.04LTS_2204.3.63.0_x64__79rhkp1fndgsc:/mnt/c/Program Files/Common Files/Oracle/Java/javapath:/mnt/c/Program Files/Eclipse Foundation/jdk-8.0.302.8-hotspot/bin:/mnt/c/Program Files/Microsoft/jdk-11.0.12.7-hotspot/bin:/mnt/c/Windows/system32:/mnt/c/Windows:/mnt/c/Windows/System32/Wbem:/mnt/c/Windows/System32/WindowsPowerShell/v1.0/:/mnt/c/Windows/System32/OpenSSH/:/mnt/c/Program Files/NVIDIA Corporation/NVIDIA NvDLISR:/mnt/c/Program Files/dotnet/:/mnt/c/Program Files (x86)/NVIDIA Corporation/PhysX/Common:/mnt/c/Program Files/MATLAB/R2021a/bin:/mnt/c/Program Files/Microsoft SQL Server/150/Tools/Binn/:/mnt/c/Program Files/Microsoft SQL Server/Client SDK/ODBC/170/Tools/Binn/:/mnt/c/Program Files/Microsoft SQL Server/130/Tools/Binn/:/mnt/c/Program Files/Git/cmd:/mnt/c/Users/Paul-Arthur/.espressif/tools/cmake/3.24.0/bin/cmake.exe:/mnt/c/Program Files/Poppler/poppler-24.02.0/Library/bin:/mnt/c/Users/Paul-Arthur/AppData/Local/Microsoft/WindowsApps:/mnt/c/Users/Paul-Arthur/AppData/Local/GitHubDesktop/bin:/mnt/c/altera/14.0/modelsim_ase/win32aloem:/mnt/c/Users/Paul-Arthur/.dotnet/tools:/mnt/c/Users/Paul-Arthur/AppData/Local/JetBrains/Toolbox/scripts:/mnt/c/msys64/mingw64/bin:/mnt/c/Users/Paul-Arthur/AppData/Local/Programs/Microsoft VS Code/bin:/mnt/c/Users/Paul-Arthur/AppData/Local/Programs/Ollama:/mnt/c/Program Files/Poppler/poppler-24.04.0:/snap/bin
----------------------------
The avaible memory is :                total        used        free      shared  buff/cache   available
Mem:            15Gi       510Mi        14Gi       3.0Mi       227Mi        14Gi
Swap:          4.0Gi          0B       4.0Gi
----------------------------
The total number of CPU cores are : 12

```	

### [Exercise 2](#exercise-2)

Starting with this exercise, you'll pass arguments to the script. This is done in the usual way, for instance:

```bash
bash script.sh 5 alice
```

Passes two arguments to the script `script.sh`. The first argument is `5` and the second argument is `alice`.

To receive those arguments in the script, you can use the pre-defined variables `$1`, `$2`, `$3`, etc. For instance, `$1` will contain the first argument, `$2` the second, and so on.

#### Task

Create a bash script that receives a number as an argument and prints the following information:
- If the number is even or odd.
- If the number is positive or negative.


The following built-in bash commands will be useful for this exercise: `if`, `else`, `fi`, `test`.

Solution:

```bash
#!/bin/bash

number=$1

if ((number % 2 == 0)); then
    echo "$number is even"
else 
    echo "$number is odd"
fi 

if ((number < 0)); then
    echo "$number is negative"
else 
    echo "$number is positive"
fi 
```

My output when run with the number 5 and -2:

(Paste the output of your script below)


```text
5 is odd
5 is positive

-2 is even
-2 is negative
```

### [Exercise 3](#exercise-3)

Create a bash script that receives a string as an argument and prints the following information:

- The number of characters in the string.
- The number of words in the string.

Again, take care to format the output in a clear way.

You'll find the following commands useful: `echo`, `wc`.

Solution:

```bash
#!/bin/bash

argument="$1"

string=$(echo -n "$argument" | wc -c)

echo "The number of characters in the string is $string"

string=$(echo -n "$argument" | wc -w)

echo "The number of words in the string is $string"
```

My output when run with the string "Hello, World! I'm doing bash!":

(Paste the output of your script below)

```text
The number of characters in the string is 29
The number of words in the string is 5
```

### [Exercise 4](#exercise-4)

Create a bash script that receives a file name and prints the content of the internet resource located at the URL specified in the file. The URL is the only line in the file.

> Do not save the file downloaded from the internet to the disk. Use a pipe to read the content of the file directly from the internet.

You'll find the following commands useful: `cat`, `wget`.

Solution:

(Paste your solution here)

```bash
#!/bin/bash
```

My output when run with a file named `exercise_4.in`:

(Paste the output of your script below)

```text
```

### [Exercise 5](#exercise-5)


A text file has the following format:

```text
Name: category1, category2, category3,...categoryN
Person1: value11, value12, value13,...value1N
Person2: value21, value22, value23,...value2N
...
PersonM: valueM1, valueM2, valueM3,...valueMN
```

You can see an example of this file in the `exercise5.in` file.

Create a bash script that receives an input file name as an argument and:

1. Checks if a file name was passed as an argument. If not, asks the user for the file name.
2. Checks if the file exists. If not, print an error message and exit.
3. Processes the file and outputs the following information in this order:

    ```text
    Categories: category1 category2 category3...categoryN

    category1: value11 value21 value31...valueM1
    category2: value12 value22 value32...valueM2
    category3: value13 value23 value33...valueM3
    ...
    categoryN: value1N value2N value3N...valueMN
    ```

For the example input file, you can see the expected output in the `output5.out` file.

> You already have almost all the tools to do this exercise. It's mostly `cut` and `tr` commands. 
> Tip: to concatenate strings in bash, you can use the `+=` operator. For instance, `text+="$fragment"` will append the value stored in `fragment` to the `text` variable.
> `echo -n` will print a string without a newline at the end.


Solution:

(Paste your solution here)

```bash
#!/bin/bash

# check if an argument was passed to the script and react accordingly

# check if the file exists and react accordingly

# extract and print the categories from the first line of the file
# tip: it is smart to save the categories in a variable, e.g. `categories`

# create a variable to store the current category index
index=1

# for each category in the categories variable, do the following:
#   - for each line in the file, starting with the second:
#      * extract the value of the category and either print it or concatenate it to an output variable
#   - print the output variable (if you have it)
#   - increment the index variable
```

The biggest challenge in this exercise is probably to read the file line-by-line starting with the second line only. If you struggle with it, either skip it or ask for help.

### [Exercise 6](#exercise-6)

Create a bash script that receives a file name as an argument and asks the user some questions based on the content of the file. The file will have the following structure:

```
Color: Red, Green, Blue
Animal: Dog, Cat, Fish, Spider
```

Do not assume that there will be only two lines and that the values will be the same as in the example above. The file can have any number of lines and the values can be anything.

With the file above, the script should first ask the user what is they favorite color and then what is their favorite animal. Like this:

```text
What is your favorite Color?
1) Red
2) Green
3) Blue
#? 
1
What is your favorite Animal?
1) Dog
2) Cat
3) Fish
4) Spider
#?
1
```

After the user answers both questions, the script should print a message like this:

```text
Your favorite color is Red. Your favorite animal is Dog.
```

To do this exercise, you'll need to read the file [line-by-line, as explained in this SO answer](https://stackoverflow.com/a/10929511).

You'll also need to cut and parse the lines to get the name (the part before the `:`) and the values (the part after the `:`). You can use the `cut` with `-d` and `-f` options command to do this.

You can also use the `tr` command to remove commas, you'll need it to be able to use the `select` command.

To get this exercise done, you'll have to combine `cut` and `tr` using pipes. 

> Input to this exercise is in the `exercise6.in` file.


Sketch of the solution:

(Paste your finished solution here)

```bash
#!/bin/bash

# get the file name passed to the script
file=$1

# create a variable to store the text to be printed at the end of the script
text=""


# read the file line by line
#   - extract the category name from the line using `cut`, and save it in the `name` variable
#   - extract the values from the line using `cut` and then `tr` to split the values into rows
#   - ask the user for the favorite value of the category using `select`
#       * append the answer to the `text` variable, like this: `text="$text Your favorite $name is $value."`

echo $text
```
