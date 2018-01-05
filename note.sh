#!/bin/bash

# Configuration options for NOTES!
EDITOR="nvim"                                                                                                                                
AUTHOR="Joe Samela"                                                                                                                          
NOTEPATH="$HOME/.note/archive/"

########################################
# Get date from system
DATE="$(date +%m-%d-%Y)"

# Recieve args as title
TITLE="$*"

# If no title is given, prompt user for title
if (( $# == 0 )); then
  read -p "Enter title: " TITLE
fi

# Remove whitespace from AUTHOR
AUTHOR_TAG=${AUTHOR//[[:blank:]]/}

# Create Filename from title
FILE_EXTENSION=".md" # Specify note file format ".md" 
NAME="${TITLE,,}" # Make filename all lowercase
FILENAME="${NAME// /_}" # Replace whitespace with underscore  
FILENAME="$FILENAME$FILE_EXTENSION" # Add file extension to filename

# Build file path from $PATH and $FILENAME
FILEPATH="$NOTEPATH$FILENAME"

# If TITLE contains "@" the search for tags 
if [[ $TITLE == *"@"* ]]; then
  eval 'grep -r --color=always "$HOME/.note/archive/" -e "$TITLE" | xargs -L1 basename'
  exit 1
fi

# If the note doesn't exist, make it
if [ ! -f "$FILEPATH" ]; then
  # Create note document
  {
    echo "# $TITLE"
    echo "    Date: $DATE"
    echo "    Author: $AUTHOR"
    echo "---"
    echo ""
    echo ""
    echo ""
    echo "---"
    echo "@$AUTHOR_TAG"
    echo ""
  } > "$FILEPATH"
fi 

#Open note with editor
eval "$EDITOR -c '6|startinsert' $FILEPATH"


