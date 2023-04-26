#!bin/bash 

xinput > ~/testxinput.txt

##run xinput to get you device names 
## you could change here microsoft with the divice name you want to edit 
VAL=$(awk '/Microsoft USB Optical Mouse/ {print}' ~/testxinput.txt  | awk '{print $8}')
if [ ! -z ${VAL} ]
then
	#to get id alone maybe it will change 
	ID=$(echo ${VAL} | cut -f 2 -d '=')
	## you could run xinput get-button-map with ${ID} to know the mapping of buttons 	
       	#and their numbers to stop them	
 	xinput set-button-map ${ID} 1 0 3      	
fi
