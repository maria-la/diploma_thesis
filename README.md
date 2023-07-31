# DESIGN AND IMPLEMENTATION OF AN EMBEDDED SYSTEM FOR AYTOMATIC SEPARATION OF CONCURRENT SPEAKERS


This directory contains the main code used in this thesis for the example generation and final system implementation.

This thesis examines the technologies of Blind Source Separation (BSS) to design and implement an embedded system for the separation of concurrent speakers in a room. Speech separation is a vital process for various fields such as speech recognition, and advanced audio processing.
The problem that this thesis aims to solve is the so-called “Cocktail Party Effect Problem”, in real time. The cocktail party effect is the ability of the brain to focus its auditory attention on a particular stimulus of interest. In the context of signal processing, we refer to it as an audio processing and signal separation problem. It focuses on separating specific sound sources from a mixed sample, especially when the sources overlap in time and/or frequency.
Firstly, a literature review is provided, which lists various Blind Source Separation (BSS) and signal Preprocessing and Postprocessing techniques. 
A comparative analysis of MATLAB experiments is performed for an evaluation of proposed machine learning techniques.
The implementation of the system is completed based on the Independent Component Analysis (ICA) machine learning technique, specifically the implementation of the Fast ICA algorithm, on a microcomputer system, namely the STM32F334R8 board, with an ARM CORTEX M4 processor. The system is programmed in bare metal C, based on ARM's CMSIS libraries to exploit their speeds.
