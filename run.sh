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