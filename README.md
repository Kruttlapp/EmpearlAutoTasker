# EmpearlAutoTasker
AutoHotKey script to automate tasking in the Empearl OT Server

**Note**
To exit script while running, press CTRL-5

**Requirements:**
* Requires AutoHotKey Version 2 installed on your computer (https://www.autohotkey.com/)
* All of the image files (*.bmp) and the script file (EmpearlAutoTasker) downloaded and added to the same folder
* Requires tibia client to be open and visible on the screen to work
* Requires you to have filtered the task window so it only shows the current task you are doing:
  ![bilde](https://github.com/Kruttlapp/EmpearlAutoTasker/assets/59822214/5111898f-8b2d-4f0f-84e3-d30c2ae803f9)



**Logical flow of the script**
1. Find the coordinates for the task icon in the top right corner of the screen
2. Check if the task window is open, if not open it
3. Check if task is finsihed, if yes, click "Finish"
4. check if new task is startable, if yes click "Start"
