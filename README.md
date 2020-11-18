# EMG-Analysis
#### Biomedical Robotics
## Intoduction
This repository contains the preprocessing and analysis of EMG signal and Motion data. The architecture involves filtering, rectification, enveloping and sampling of EMG.
The EMG Analysis program analyzes EMG data recorded for a number of different Motion Capture and from different Data Collection sources.
The project was developed on Matlab 2019b. 
## EMG Pre-processing
This EMG Analysis program supports the following analysis functions :
* Magnitude spectrum analysis
* Bandpass Filtering
* Removal of phase delay
* Linear Envelope 
* Full wave rectification
* Down-Sampling

## Data Extraction 
The motion data contains data correspoding to the movement of x and y cursor, the x and y targets, data points and event cue's.
The entire motion data was divided into several sets for different time intervals. Each set contains a total of 96 motion with 48 out and 48 back motions.Out of 12 sets , data of first five sets corresponds to situatio when there was no application force.The next five contains data with applied external force and the last two were wash-out sets. 

## Observation
## Package and File List
The file tree shows the various packages in this project.

![tree1](https://user-images.githubusercontent.com/47361086/98941699-60438000-2506-11eb-945e-3f5ad7b48c23.PNG)

The **docs** folder contains the documentations obtained from doxgen.The **index.html** contains the html documentation of all the scripts used in this project.The **launch folder** has the **launch fil**e to run the project. The scripts are all contained inside the **src folder**.
## Installation and Running Procedure
Clone this github repository into the ROS workspace
```
git clone https://github.com/NithaElizabeth/Behavioural-Architecture_-EXPRO-1-
```
Next the scripts had to made executable.For that navigate to the src folder of this repositiory.
```
cd Behavioural-Architecture_-EXPRO-1--master/src
```
```
chmod +x state_machine.py
```
```
chmod +x verbal_interaction.py
```
```
chmod +x gesture_interaction.py
```
```
chmod +x control.py
```
After this. in another terminal run the roscore.
```
roscore
```
Once the roscore is run,then the launch file must be run.
```
cd ..
roslaunch assignment1 assignment1.launch
```

## Author
The system was developed by Nitha Elizabeth John under the guidance of Prof.Luca Buoncompagni and Prof.Carmine Recchiuto\
Author  : Nitha Elizabeth John\
Contact : nithaelizabethjohn@gmail.com
