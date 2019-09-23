---
title: "Setup and Install"
draft: false
date: 2019-09-05
tags: ["markdown", "GitHub", "website"]
categories: ["hugo", "base16"]
---
# Python for Beginner Programmers

## Installing Python on Mac
In this section we are going to setup Python in a way that will make it easier for you to build and test multiple types of projects.  This isn't the simplest way to setup python, but it will eliminate problems for you in the future.  This is similar to how experienced python developers might setup their python programming environment.

### Install VisualStudio Code
Visual Studio Code is a text editor geared towards writing programs.  You might also hear the term, Integrated Development Environment (IDE).  An IDE is a text editor used specifically for writing programs.  There are many different types of IDEs.  Choosing one is a matter of personal preference.  We are going to start with Visual Studio Code, or VS Code for short, because its very popular and approachable for beginner programmers.

Browse to [https://code.visualstudio.com/](https://code.visualstudio.com/) and download the VS Code for your Mac and install it.

### Install Homebrew
Homebrew, or brew for short, is a package management tool used to install software onto your computer.  Its run entirely from the terminal.  Now would probably be as good of a time to get familiar with the terminal.  You'll be using it a lot as a python programmer.

Open Finder and search for the Terminal application.  You'll find it.  Once you've located it, double click on it to open it.  It won't look like much.

Now lets browse to [https://brew.sh](https://brew.sh) and find at the top of the home page where it says Install Homebrew.  Highlight that long funny looking text, and copy onto your clipboard by holding down Command ⌘ + C.  Now paste that text in the terminal by typing Command ⌘ + V, and then hit enter.  That'll start installing Homebrew.  Follow the onscreen instructions to work through the installation.  It can take awhile to perform this step.

Congrats, you have installed Homebrew.  We'll be using it from time to time to install various developer tools and packages.  To do that, you type `brew install <package to install>`.  Its really simple and easy to use.  So lets try installing something.

### Install pyenv and pyenv-virtualenv
To get started writing and running python code, you have to install python.  There are many ways to do that, we are going to show you one way here.

Go to a terminal and type or copy and paste the following commands one at a time.

```bash
brew update
brew install pyenv
brew install pyenv-virtualenv
```

Those commands installed a couple of packages that will help us install python, which we'll be doing momentarily.  I won't be diving to deep into the details of what each one does, for now, just know that we'll use `pyenv` to install and manage multiple python installations.

There are a few last steps we have to do now that those two programs are installed.  Again, this may seem like wizardry, but as you progress as a programmer, you'll understand what these next few commands are doing.  For now, understand that they are finishing the installation of `pyenv` and  `pyenv-virtualenv`.

Go to a terminal and type or copy and paste the following commands.

```bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile
```

Finally, exit out of your terminal application by clicking on Terminal > Quit Terminal in the menu at the top of your screen.  Now reopen your terminal.  This seems silly, but its a pretty important step.

Congrats for making it this far.  Now for the fun part.  Lets install python.


### Install Python 3.7.4
Now all your hard work is about to pay off.  Lets install python.  Open your terminal if it isn't already.  Then type or copy and paste the following commands into it.

```bash
pyenv install 3.7.4
```

This is going to take a bit to install python.  Just let it go.  It'll finish.

After python is finished installing, lets setup a project folder and test it out.

In the terminal execute the following commands.

```bash
cd ~
mkdir -p ~/Projects/python/firstapp
cd ~/Projects/python/firstapp
pyenv local 3.7.4
python --version
```

The above set of commands created a project folder located in your home folder under `Projects/python/firstapp`.  Get in the habit now to organize your projects.  Don't skimp on being organized.  It pays off in the long run.  After creating the project folder we changed into that folder using the `cd` command.  `cd` stands for change directory.  Then `pyenv local 3.7.4` set our local project folder to always use python version 3.7.4, which is the version we installed earlier.  After running the command `python --version` you should have gotten output that said something like `Python 3.7.4`.  If you didn't, try the steps again.

### Install VS Code Python plugin

Lets do a little setup with our IDE.  Open VS Code and find and click on the Extensions button in the left hand tool bar.  This will open a panel where we can add some extensions to VS Code.  At the top of the panel is a search bar.  Search for `Python`.  At the top of the results will be a Python extension developed by Microsoft.  Its the most popular extension installed for VS Code.  Click on the search result, and then click on the little green install button.

Now that the python extension is installed, your VS Code is all configured to start writing some python applications.
