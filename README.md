# wslnodejs
Tool, allowing to use nodejs from WSL environment in WebStorm (any IntelliJ presumably)

# Why?
I have a Grunt set up, which calls bash scripts and works perfectly in WSL. I used to call grunt from separate console, but then found shortcut in IDE, which didn't work, and thought _hey, why not?_ Solution is to make WebStorm to call node inside WSL. You can make a simple .bat file to call

    wsl node

But WebStorm also passes absolute paths as arguments. WSL doesn't understand those, so...

# How does it work?
Heart of the project - wslnode.js. All this script does - transforms windows 
paths to WSL paths and passes those args to nodejs inside WSL. Very easy!

# Usage
1) Go to your WebStorm settings: `Ctrl + Alt + S`
2) Go into **Languages & Frameworks -> Node.js and NPM**
3) Set **node.bat**, which you will find here as your nodejs interpreter

Now those grunt tasks can run from WebStorm.

# What is next?
I have only tested this with Grunt tasks. Would be nice to figure out how to make IDE work with correct NPM.
