#!/bin/bash

# Add "note" command to .bashrc
echo '# Alias note commmand' >> "$HOME/.bashrc"
echo 'alias note="bash ~/.note/note.sh"' >> "$HOME/.bashrc"

# reload .bashrc
bash
