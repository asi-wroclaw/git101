#doitlive shell: /bin/bash
#doitlive speed: 3
#doitlive prompt: {user.red}@{hostname.green} {dir.magenta} {vcs_branch.yellow} $
#doitlive commentecho: true

# Introduce yourself
git config --global user.name "Michał Zając"
git config --global user.email "michal.zajac@gmail.com"

# Choose editor

git config --global core.editor vim

# Verifying settings

git config --list

# Alias demonstration

git glog

# Creating a git repository
mkdir my_project
cd my_project
git init
touch NEWFILE
git add .
git commit -m "Initial commit"
cd ..

# Getting a git repository
git clone git@github.com:Quintasan/misc.git
cd misc

# Checking status
git status

# Tracking new files
touch NEWFILE
git status
git add NEWFILE
git status

# Staging modified files
echo "modified file" >> README.md
git status
git add README.md
git status

# Ignoring files
touch IDONTNEEDTHIS
git status
echo "IDONTNEEDTHIS" >> .gitignore
git status

# Viewing unstaged changes
echo "even more modifications" >> README.md
git status
git diff

# Viewing staged chages
git diff --cached

# Commiting
git commit

# Removing files
git rm NEWFILE
git status

# Moving files around
git mv README.md readme.md
git status

# Browsing the log
git log

# BRIEF INTERMISSION
# THE FOLLOWING COMMANDS CAN AND WILL RESULT IN DATA LOSS IF HANDLED INCORRECTLY
# YOU HAVE BEEN WARNED

# When working with other people there is only one rule to remember:
# Do not rewrite history once you made it public

# I forgot to add something to a commit
echo "THIS IS VERY IMPORTANT" > VERYIMPORTANTFILE
git add VERYIMPORTANTFILE
git commit -m "Very important commit"
echo "I FORGOT THIS VERY IMPORTANT THING" >> VERYIMPORTANTFILE
git glog
git status
git diff
git commit --amend
git status

# Unstaging a staged file
touch DONTNEEDTHIS
git add .
git status
git reset HEAD DONTNEEDTHIS
git status

# Unmodifying a modified file
echo "THIS GUY HAS NO IDEA WHAT IS HE TALKING ABOUT" >> readme.md
git diff
git checkout -- readme.md
git status

# Working with remotes
git remote -v

# Adding remotes
git remote add github git@github.com:Quintasan/misc2.git

# Pushing data
git push github master

cd ..

# Branching

# Inspect the project
cd branching_example
git glog

# Creating a new branch
git branch iss53
git checkout iss53

# Advancing a branch
echo "# This is a post about gitting gut" > post-4.md
git add post-4.md
git commit -m "Add my new post about gitting gud"
git glog --all

# Creating the hotfix branch
git checkout master
git glog --all
git checkout -b hotfix

# Applying our fix
vim post-3.md
git add post-3.md
git commit -m "I'm no longer a git expert"
git glog --all

# Merging hotfix branch
git checkout master
git merge hotfix
git glog --all
git branch -d hotfix

# Finishing our post
git checkout iss53
echo "" >> post-4.md
echo "My post is really nice" >> post-4.md
git add post-4.md
git commit -m "Finish my post"
git glog --all

# Merging our changes
git checkout master
git merge iss53
git branch -d iss53
git glog --all

# Merge conflicts

# Create branch A
git checkout -b branch1
vim post-4.md
git commit -am "Important changes"
git glog --all

# Go back to master
git checkout master

# Create branch B

git checkout -b branch2
vim post-4.md
git commit -am "More important changes"
git glog --all

# Merge A into master
git checkout master
git merge branch1

# Merge B into master
git merge branch2
git status
