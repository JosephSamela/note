#!/bin/bash

# Configuration options for NOTES!
source "$HOME/.note/config.cfg"

# Get date from system
DATE="$(date +%m-%d-%Y)"

# If no title is given, prompt user for title
if (( $# == 0 )); then
  read -p "Enter title: " TITLE
# If -r flag used, don't include flag in title name
elif [[ $1 == *"-r"* ]];then
  TITLE="${*:2}"
# Otherwise title is all args
else
  TITLE="$*"
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
  eval 'grep -r -i --color=always "$NOTEPATH" -e "$TITLE" | xargs -L1 basename'
  exit 1
fi

# remove -r from note title
if [[ $1 == *"-r"* ]]; then
  read -p "Delete $FILEPATH - Are you sure? (y/n): " RESULT
  if [[ $RESULT == "y" ]]; then
	  eval "rm $FILEPATH"
	  echo "$FILEPATH has been deleted"
	  exit 1
  else
	echo "Ok, nothing has been deleted"
  fi
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
    echo "@$TITLE"
    echo "@$DATE"
    echo ""
  } > "$FILEPATH"
fi 

#Open note with editor
eval "$EDITOR -c '6|startinsert' $FILEPATH"
