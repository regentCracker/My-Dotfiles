# hopefully one day this file will contain all my shortcuts and even documentation

#alias for short clear
alias 'cls=clear;echo gj bruh'




# Set the initial working directory
working_directory="$HOME"

# Custom command to change the working directory
function setwd() {
    if [ -d "$1" ]; then
        working_directory="$1"
        echo "Working directory set to: $working_directory"
    else
        echo "Directory '$1' does not exist."
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

# Example usage:
# setwd /path/to/directory
# move filename

