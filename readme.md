# NOTE

*NOTE - Simple & Fast note taking utility for the command line* https://josephsamela.github.io/note/

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

**Search Notes**

List all notes with `-l`. Title of all created notes listed, sorted by date. 
```bash
$ note -l
```

**Delete Notes**

Delete note with `-d`. Once deleted - they're gone for good!
```bash
$ note -d Title of Note
```

**Using Tags**

Add tags to note with the `@` symbol decorator - enter tags anywhere.

`@Tag` `@Homework` `@todo` `@recipes` `@shopping` `@Travel2018`

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
$ sh install.sh
# ...and start taking notes!
$ note Brilliant Idea
```
NOTE is installed at `~/.note`. Configuration file is located at `~/.note/config.cfg`.

[New features coming soon...](https://github.com/JosephSamela/note/projects/1)
