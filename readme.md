# NOTE

*NOTE - Simple & Fast note taking utility for the command line*

I’m a simple man. When I get thoughts, I write them down. I don’t open another tab, enter incognito mode, log into my personal account then create a new note that get’s synced throughout all time and space. Hell, I don’t even leave the terminal. I just type `note` and start writing. `note` is a Simple & Fast note taking utility for the command line. Use the lightning-quick cli text editor you love and let `note` organize all your notes in the background.

**The basics**

Open a terminal and type `note`. Easy!
```
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
```
$ note Existing Note Title
```

**Search Notes**

List all notes with `-l`. Title of all created notes listed, sorted by date. 
```
$ note -l
```

**Delete Notes**

Delete note with `-d`. Once deleted - they're gone for good!
```
$ note -d Title of Note
```

**Using Tags**

Add tags to note with the `@` symbol decorator - enter tags anywhere.

`@Tag` `@Homework` `@todo` `@recipes` `@shopping` `@Travel2018`

Tags are a convient way of searching + organizing your notes. 
```
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
```
# Run the included installer...
$ sh install.sh
# ...and start taking notes!
$ note Brilliant Idea
```
NOTE is installed at `~/.note`. Configuration file is located at `~/.note/config.cfg`.

[New features coming soon...](https://github.com/JosephSamela/note/projects/1)
