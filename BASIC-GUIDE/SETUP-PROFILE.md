# Setup Bash Profile (.bash_profile/.bashrc)


#### __Setting up a Bash Script on Mac__

##### __Quick Summary__
* Navigate to your user directory: ```cd ~```
* Create a directory called bin: ```mkdir bin```
* Add the path to "/bin" to the top of your .bash_profile:
  * ```nano .bash_profile```
  * Paste inside .bash_profile: ```export PATH=$PATH:/Users/estengrove```
  * Save the file
  * Go to the bin directory and create a bash script
    * All bash scripts must include: ```!#/bin/bash``` at the top before any commmands.
  * Make sure the bash script file is executable: ```chmod u+x scriptFile.sh```
  * To run a script: ```sh scriptFile.sh```

###### Navigate to your 'user' directory. 
```
cd ~
```
  To confirm your in the right directory run: 
```
pwd
```
  The result should show: /Users/estengrove
  But replace estengrove with whatever your username is.
###### Next create the a folder called bin. If it's already created, move to the next step.
```
mkdir bin
```
###### Then open the .bash_profile file:
```
nano .bash_profile
```
  If the file doesn't exist simply type:
```
touch .bash_profile
Then type: nano .bash_profile
```
###### Now we need to include the path to the bin directory inside your bash profile:
```
export PATH=$PATH:/Users/estengrove
```
###### Then save the file:
```
Press CTRL+O
Then ENTER
Then CTRL+X
```
  Now you're ready to create your first bash script. NOTE: All bash scripts must include: !#/bin/bash at the top of the file.
#### Let's create our first bash script
###### Navigate to the bin directory
```
cd bin
```
###### Create a new file without an extension. Like hello-world
```
touch hello-world
```
###### Then open the new file and let's create our script
```
nano hello-world
```
  Then paste in: ```!#/bin/bash``` at the top of the file
###### Then let's say "Hello World!".
```
echo Hello World!
```
###### Now save the file:
```
Press CTRL+O
Then ENTER
Then CTRL+X
```
#### CONGRATS! You've made your first bash script. Let's see it run. 
Type: ```sh hello-world```
The Result should print: ```"Hello World!"``` in the terminal.
