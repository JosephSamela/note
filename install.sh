#/bin/bash

# Make ~/.note directory
mkdir "$HOME/.note"
mkdir "$HOME/.note/archive"

# Copy files to .note directory
cp note.sh "$HOME/.note"
cp readme.md "$HOME/.note"
cp LICENSE "$HOME/.note"
cp config.cfg "$HOME/.note"

echo "Welcome to note! Install is quick, just answer three questions..."
echo ""
echo "What's your name? This name will appear as author in the title of each note. (ie. Jeb Kerman, Zezima, etc.)"
read -p "Enter author name: " AUTHOR
echo AUTHOR="\"$AUTHOR\"" >> "$HOME/.note/config.cfg"
echo ""
echo "Which editor do you use? (ie. \"vim\", \"nvim\", etc.)"
read -p "Enter editor: " EDITOR
echo EDITOR="\"$EDITOR\"" >> "$HOME/.note/config.cfg"
echo ""
echo "Where do you keep notes? (ie. $HOME/.note/archive/) <--psst! make sure there's a \"/\" at the end" 
echo "If you sync a folder with Dropbox, Google Drive, rsync, etc. choose that location to backup notes to the cloud."
read -p "Enter path: " NOTEPATH
echo NOTEPATH="\"$NOTEPATH\"" >> "$HOME/.note/config.cfg"
echo ""
# Add "note" command to .bashrc
echo '# Alias note commmand' >> "$HOME/.bashrc"
echo 'alias note="bash ~/.note/note.sh"' >> "$HOME/.bashrc"

# Install complete!
echo "Install complete! Type \"note\" to get started!"
echo "To change these settings edit \"$HOME/.note/config.cfg\""

# reload .bashrc
bash
