## Github/Raspberry Pi Procedures

### File organisation

Folder per page containing:

- 'index.html' - the content
- 'images/' - folder of images for that page
- 'generate.sh' - script (run with `./generate.sh` from with the folder) to generate 'files.json' from 'images/*'
- 'files.json' - list of images to display, generated from 'generate.sh'

### Adding a new photo viewer page

- Create a folder with the appropriate name.
- Copy `index.html` & `generate.sh`
- Create `images/` folder
- Add images you want, with filenames in the format: `num name#author.jpg` (e.g `02 What#Gary.jpg`)
- Open a terminal and change directory into the new folder (`cd new-folder-name`)
- Run `./generate.sh` to create/update the `files.json`
- Run `ls` to check the file was created
- Run `jq . files.json` to view it
- Go to the top-level (`cd ..` if you're in the sub folder)
- Run `./serve.sh` - to check locally
- Open `0.0.0.0:8000` in firefox to view, add `/pagename` (e.g `/competition`)
- Once you're done, press `Ctrl + C` to end the serve script
- Then proceed with git things

### Serving locally

From a terminal (at the top-level) run `./serve.sh`, and you can end this with `Ctrl + C`.
You can then visit `0.0.0.0:8000` in your browser to use the local version of the site.

### Getting Help

*Help with git*

```
git --help
git add --help
git pull --help
git push --help
```

*General help with a command X*

```
man X
```

### Starting position

1. Type 'git status'
2. Decide what to do (discard & reset e.g)

### Discard local changes and pull from github

1. 'git fetch' (update local cache of github)
2. 'git reset --hard origin/master' (remove local changes and get up to date with github)

### Local Changes, send to Github

1. Make changes
2. Terminal, select folder (cd), ~/Documents/garygoodacre.github.io
3. Type 'git status' (differences)
4. Type 'git add -A' (track changes)
5. Type 'git commit' (opens text editor to describe changes)
6. Type changes title (text)
7. Ctrl+X (exit and save to raspberry Pi as a commit)
8. Type 'git push' (commit changes to github)

