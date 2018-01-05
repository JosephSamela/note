#!/bin/bash

# Make ~/.note directory
mkdir "$HOME/.note"
mkdir "$HOME/.note/archive"

# Copy files to .note directory
cp note.sh "$HOME/.note"
cp readme.md "$HOME/.note"
cp LICENSE "$HOME/.note"
cp config.cfg "$HOME/.note"

read -p "Enter author name: " AUTHOR
echo AUTHOR="\"$AUTHOR\"" >> "$HOME/.note/config.cfg"

# Add "note" command to .bashrc
echo '# Alias note commmand' >> "$HOME/.bashrc"
echo 'alias note="bash ~/.note/note.sh"' >> "$HOME/.bashrc"

# reload .bashrc
bash
