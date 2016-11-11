# Codebook


The data contained in this data set has the following variables

- subject: number identification of the subject
- activities: kind of activity the user was performing when the measurement was done

This is followed by 66 features:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals (prefix 'time-' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. 

The signals contain a prefix and a sufix.

Prefix:

- time: time domain
- frequency: frequency domain

Sufix:

- mean()-{x,y,z}: Calculation of the mean for the specified direction
- std()-{x,y,z}: Calculation of the standard deviation for the specified direction





