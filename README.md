<div align="center"><img src="/media/LOGO.gif" alt="Robotic arm logo" width="500px"></div>

## Table of Contents

* [Project Description](#Project-Description)
* [Instructions](#Instructions)
* [Use Cases](#Use-Cases)
* [Notes](#Notes)
* [References](#References)

# Project Description

This project constructs the robot function with animation to help you visualize how the robot moves in its designated working area. You enter the robot's parameters and then you can choose between a range of functionalities that mimic a real world robot.

# Instructions

1. Download or Clone the repository
2. Open **Draft1GUI.m** file.
3. Run it using MATLAB and play around 😋

<div align="center"><img src="/media/RUN.gif" alt="run instructions" width="500px"></div>

# Use Cases

First of all, enter the lengths of the two link and the range of each link then you can:

- Draw & calculate the working area using Green's Theorm

<div align="center"><img src="/media/Draw_WA_WO_Anim.gif" alt="draw working area" width="500px"></div>

- Draw working area with animation

<div align="center"><img src="/media/Draw_WA_W_Anim.gif" alt="draw working area with animation" width="500px"></div>

- Use Direct Kinematics Position Model to deduce position of the end effector from given angles

<div align="center"><img src="/media/DKPM.gif" alt="DKPM" width="500px"></div>

- Use Inverse Kinematics Position Model to deduce angles from a given position of the end effector

<div align="center"><img src="/media/IKPM.gif" alt="IKPM" width="500px"></div>

- Animate robotic arm along a straight line trajectory in working area

<div align="center"><img src="/media/TRAJECTORY.gif" alt="arm animation along straight line" width="500px"></div>

Check the document attached in the references section for more details

# Notes

- Before any calculation is done or a graph is drawn, the input values are validated to a certain accuracy to ensure valid calculations.
- Please wait for the animation to end before clicking another push button to perform another operation.

# References

Project Report: [Robotics_Report.pdf](https://github.com/MahmoudSamy1452/2-link-Arm-Robot-Simulation/files/10561742/Robotics_Report.pdf)



