# Codebook


The data contained in this data set has the following variables

- `subject`: number identification of the subject.
- `activities`: kind of activity the user was performing when the measurement was done.
- `66 features`

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. The time domain signals (prefix 'time-' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. 

The 66 features are composed by a:

Prefix:

- `time`: time domain
- `frequency`: frequency domain

Content:

- Describes the source of the data.

Sufix:

- `mean()-{x,y,z}`: Calculation of the mean for the specified direction
- `std()-{x,y,z}`: Calculation of the standard deviation for the specified direction

### Total list of variables

* "subject"
* "activities"
* "time-bodyacceleration-mean()-x"
* "time-bodyacceleration-mean()-y"
* "time-bodyacceleration-mean()-z"
* "time-bodyacceleration-std()-x"
* "time-bodyacceleration-std()-y"
* "time-bodyacceleration-std()-z"
* "time-gravityacceleration-mean()-x"
* "time-gravityacceleration-mean()-y"
* "time-gravityacceleration-mean()-z"
* "time-gravityacceleration-std()-x"
* "time-gravityacceleration-std()-y"
* "time-gravityacceleration-std()-z"
* "time-bodyaccelerationjerk-mean()-x"
* "time-bodyaccelerationjerk-mean()-y"
* "time-bodyaccelerationjerk-mean()-z"
* "time-bodyaccelerationjerk-std()-x"
* "time-bodyaccelerationjerk-std()-y"
* "time-bodyaccelerationjerk-std()-z"
* "time-bodygyro-mean()-x"
* "time-bodygyro-mean()-y"
* "time-bodygyro-mean()-z"
* "time-bodygyro-std()-x"
* "time-bodygyro-std()-y"
* "time-bodygyro-std()-z"
* "time-bodygyrojerk-mean()-x"
* "time-bodygyrojerk-mean()-y"
* "time-bodygyrojerk-mean()-z"
* "time-bodygyrojerk-std()-x"
* "time-bodygyrojerk-std()-y"
* "time-bodygyrojerk-std()-z"
* "time-bodyaccelerationmagnitude-mean()"
* "time-bodyaccelerationmagnitude-std()"
* "time-gravityaccelerationmagnitude-mean()"
* "time-gravityaccelerationmagnitude-std()"
* "time-bodyaccelerationjerkmagnitude-mean()"
* "time-bodyaccelerationjerkmagnitude-std()"
* "time-bodygyromagnitude-mean()"
* "time-bodygyromagnitude-std()"
* "time-bodygyrojerkmagnitude-mean()"
* "time-bodygyrojerkmagnitude-std()"
* "frequency-bodyacceleration-mean()-x"
* "frequency-bodyacceleration-mean()-y"
* "frequency-bodyacceleration-mean()-z"
* "frequency-bodyacceleration-std()-x"
* "frequency-bodyacceleration-std()-y"
* "frequency-bodyacceleration-std()-z"
* "frequency-bodyaccelerationjerk-mean()-x"
* "frequency-bodyaccelerationjerk-mean()-y"
* "frequency-bodyaccelerationjerk-mean()-z"
* "frequency-bodyaccelerationjerk-std()-x"
* "frequency-bodyaccelerationjerk-std()-y"
* "frequency-bodyaccelerationjerk-std()-z"
* "frequency-bodygyro-mean()-x"
* "frequency-bodygyro-mean()-y"
* "frequency-bodygyro-mean()-z"
* "frequency-bodygyro-std()-x"
* "frequency-bodygyro-std()-y"
* "frequency-bodygyro-std()-z"
* "frequency-bodyaccelerationmagnitude-mean()"
* "frequency-bodyaccelerationmagnitude-std()"
* "frequency-bodyaccelerationjerkmagnitude-mean()"
* "frequency-bodyaccelerationjerkmagnitude-std()"
* "frequency-bodygyromagnitude-mean()"
* "frequency-bodygyromagnitude-std()"
* "frequency-bodygyrojerkmagnitude-mean()"
* "frequency-bodygyrojerkmagnitude-std()"





