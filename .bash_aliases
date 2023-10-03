# hopefully one day this file will contain all my shortcuts and even documentation

#alias for short clear
alias 'cls=clear;echo gj bruh'




# Set the initial working directory
working_directory="$HOME"
working_directory_path="./.working_directory"

function save_working_directory() {
    echo "$working_directory" > $working_directory_path
}

function load_working_directory() {
    if [ -f $working_directory_path ]; then
        working_directory=$(cat $working_directory_path)
    else
        echo "No saved working directory found. Setting to $working_directory"
        save_working_directory
    fi
}
function echowd(){
    echo "Your current working directory is: $working_directory"
}

load_working_directory

# Custom command to change the working directory
function setwd() {
    if [ -d "$1" ]; then
        working_directory="$1"
        #working_directory="${HOME}/${working_directory}"
        save_working_directory
        echo "Working directory set to: $working_directory"
    else
        echo "Directory '$1' does not exist. (working directory is still: $working_directory)"
    fi
}

# Move file to the working directory
function move() {
    if [ -f "$1" ]; then
        mv "$1" "$working_directory"
        echo "File '$1' moved to the working directory: $working_directory"
    else
        echo "File '$1' does not exist."
    fi
}

# Change directory into the working directory
function cdwd(){
    cd "$working_directory"
}

# Alias for changing the working directory
alias setwd="setwd"

# Alias for moving files to the working directory
alias move="move"
alias echowd="echowd"

# Example usage:
# setwd /path/to/directory
# move filename



# This is for the PATH because I'm lazy:
export PATH="$HOME/gradle/android-sdk/platform-tools:$HOME/gradle/android-sdk/tools:$PATH"
export PATH="$HOME/gradle/gradle-8.1.1/bin:$PATH"

