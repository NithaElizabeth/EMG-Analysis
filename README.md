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
The motion data contains data correspoding to the movement of x and y cursor, the x and y targets, data points and event flags. The EMG data contain the EMG signal recorded for biceps and triceps along with event flags. \
The entire motion data was divided into several sets for different time intervals. Each set contains a total of 96 motion with 48 out and 48 back motions.Out of 12 sets , data of first five sets corresponds to situatio when there was no application force.The next five contains data with applied external force and the last two were wash-out sets. 

## Observation
![Capture](https://user-images.githubusercontent.com/47361086/99583839-92b91580-29fd-11eb-9d02-5563798688ca.PNG)
The figure above depicts the analysis performed on the first set which does not have force applied onto it.It was found that muscle activation starts after 150ms. It was observed that the trajectory to reach the target was nearly straight without the application of force. But on appliying force, the trajectory was distorted mainly near the target.
## Package and File List
The file tree shows the various packages in this project.

![Capture1](https://user-images.githubusercontent.com/47361086/99588463-078f4e00-2a04-11eb-9cb3-5d4187a20a4a.PNG)


The **EMG_data_ANNA**  and **kinem_ANNA**  contains the recorded EMG signal and motion data for analysing.All the other files are scripts and functions that support the experiment.
## Installation and Running Procedure
Clone this github repository into the ROS workspace
```
git clone https://github.com/NithaElizabeth/EMG-Analysis
```
On downloading the repository the the scripts couls be run on any system with Matlab application.


## Author
The system was developed by Nitha Elizabeth John under the guidance of Prof.Luca Buoncompagni and Prof.Carmine Recchiuto\
Author  : Nitha Elizabeth John\
Contact : nithaelizabethjohn@gmail.com
