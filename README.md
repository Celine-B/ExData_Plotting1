# Exploratory data analysis - Week 1 Assignment

Analysis performed with R version 3.5.2 (2018-12-20)

## Assignment: 
To reproduce 4 plots (plots to reproduce are provided in folder 'figure')

## This repository contains the files for the week 1 assignment of the Exploratory data analysis Coursera course:
* 'README.md': explains the files contained in the directory and how the script work.
* 4 R scripts (plot1.R, plot2.R, plot3.R, plot4.R): one script for each plot 
* 4 png files (plot1.png, plot2.png, plot3.png, plot4.png): one png file for each plot 
* A folder 'figure': contains the 4 plots to reproduce

## Original dataset
The source dataset “Individual household electric power consumption Data Set” comes from the UC Irvine Machine Learning Repository.
Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.

The dataset consists of 9 variables:
* Date: Date in format dd/mm/yyyy
* Time: time in format hh:mm:ss
* Global_active_power: household global minute-averaged active power (in kilowatt)
* Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
* Voltage: minute-averaged voltage (in volt)
* Global_intensity: household global minute-averaged current intensity (in ampere)
* Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
* Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
* Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.


## Code explanation
Note: all plots will focus on a subset of the dataset: how household energy usage varies over a 2-day period in February, 2007. 
The goal is to reconstruct the 4 plots provided as example and using the base plotting system.

Each plot was:
* Constructed and saved to a PNG file with a width of 480 pixels and a height of 480 pixels.
* Named as plot1.png, plot2.png, etc. 

There is a separate R code file (plot1.R, plot2.R, etc.) to constructs the corresponding plot, i.e. code in plot1.R constructs the plot1.png plot. 
The code file includes code for reading the data so that the plot can be fully reproduced. It also includes the code that creates the PNG file.
