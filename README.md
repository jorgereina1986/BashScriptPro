# BashScriptPro

## The Problem:  
It's annoying to go through the whole setup of creating a project and then also creating a remote project on Github and then linking it

## The Solution:
I built a script that creates a local repo, remote repo, README.md and make an initial commit

## Instructions to use this script:  
  -Add this script to `/usr/local/bin`  
  -Navigate to the directory where you want to create your project  
  -Run the script `mkrepo`  
  -Write the name of the Project when prompted  
  -Write your Github username and password when prompted(usually asked once or twice)
  
### Once the above steps are completed this:  
  -will create a local directory with the project name inputed  
  -will create a remote repo on Github with the same project name  
  -create a README.md  
  -add  your files  
  -commit your files  
  -link local repo to remote repo  
  -push changes to Master branch  
