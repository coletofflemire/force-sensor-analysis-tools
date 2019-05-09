This repository contains a series of MATLAB scripts and GUI's used in conjunction with an Arduino Mega and capacitive force sensors.  

**fieldStudy.m and fieldStudy.fig:**
Comprehensive graphical user interface developed to accept measurements and read data from pressure sensors. Mounted on a helmet in specific locations specified in the code, the pressure sensor values are also plotted on a 3D surface to visualize the data. 

**ruleOfThree.m and ruleOfThree.fig:**
Graphical user interface used to quickly calculate values based on the body measurement *Rule of Three* (If two measurements are different by greater than 10%, take a third and average them)

**comparisonGUI.m and comparisonGUI.fig:**
Graphical user interface developed to automate the process of graphing sensor values obtained from prior measurements. 

**contourPlot.m and readSensors.m:**
Scripts used to read and plot sensor values during the calibration and testing stage. 

Further analysis of the data can be done within the spreadsheets generated. 

These files require the Arduino Hardware Support Library on MATLAB. 
