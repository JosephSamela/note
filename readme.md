# NOTE

*NOTE - Simple & Fast note taking utility for the command line*

**The basics**

Open a terminal and type `note`. Easy!
```bash
# Type "note" and be prompted for title
$ note
Enter title: Hello World
# Or faster with: note "Note Title"
$ note Hello World
```
**Note format**

Blank notes are opened in vim. Notes are written in markdown.
```markdown
# Example Note                                   
    Date: 01-04-2018                                               
    Author: Joe Samela                                        
---
This is an example note! Syntax is markdown, go nuts!
---
@JoeSamela
```

**No Repeated Notes**

If a note already exists, it's re-opened.
```bash
$ note Existing Note Title
```

**Using Tags**

Add tags to note with the `@` symbol decorator - enter tags anywhere.

`@Tag` `@Homework` `@todo` `@recipes` `@shopping` `@Travel_2018!`

Tags are a convient way of searching + organizing your notes. 
```bash
# Search your notes for tags with the @ decorator.
$ note @recipes
guacamole.md:@recipes
salsa.md:@recipes
potatosalad.md:@recipes
# Partial tag names work too!
$ note @rec
guacamole.md:@recipes
salsa.md:@recipes
potatosalad.md:@recipes
```

**Sound cool?**

Want to try NOTE? Clone the repo and run the installer - done!
```bash
# Run the included installer...
$ bash install.sh
# ...and start taking notes!
$ note
Enter title: Brilliant Idea
```
NOTE is installed at `~/.note`.

By default notes you create are stored at `~/.note/archive`.
