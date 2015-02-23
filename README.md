# Getting-and-cleaning-data


## Project Introduction

The purpose of this project is to demonstrate your ability to collect, work with, 

and clean a data set. The goal is to prepare tidy data that can be used for later 

analysis. You will be graded by your peers on a series of yes/no questions related 

to the project. You will be required to submit: 1) a tidy data set as described 

below, 2) a link to a Github repository with your script for performing the 

analysis, and 3) a code book that describes the variables, the data, and any 

transformations or work that you performed to clean up the data called CodeBook.md. 

You should also include a README.md in the repo with your scripts. This repo 

explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable 

computing - see for example this article . Companies like Fitbit, Nike, and Jawbone 

Up are racing to develop the most advanced algorithms to attract new users. The 

data linked to from the course website represent data collected from the 

accelerometers from the Samsung Galaxy S smartphone. A full description is 

available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR

%20Dataset.zip 

 The R script run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each 

measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with 

the average of each variable for each activity and each subject.


## Feature Selection 


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## Code Book
Subject - A factor that identifies the volunteer participant.

Activity - A factor that identifies the activity being performed including Walking, WalkingUpStairs, WalkingDownStairs, Sitting, Standing and Lying.

MeanBodyAccelerationXAxis - The mean of the body acceleration on the X axis.

MeanBodyAccelerationYAxis - The mean of the body acceleration on the Y axis.

MeanBodyAccelerationZAxis - The mean of the body acceleration on the Z axis.

MeanGravityAccelerationXAxis - The mean of the gravity acceleration on the X axis.

MeanGravityAccelerationYAxis - The mean of the gravity acceleration on the Y axis.

MeanGravityAccelerationZAxis - The mean of the gravity acceleration on the Z axis.

MeanBodyAccelerationJerkXAxis - The mean of the body acceleration on the X axis, 

derived in time to obtain Jerk signals.

MeanBodyAccelerationJerkYAxis - The mean of the body acceleration on the Y axis, 

derived in time to obtain Jerk signals.

MeanBodyAccelerationJerkZAxis - The mean of the body acceleration on the Z axis, 

derived in time to obtain Jerk signals.

MeanBodyAngularVelocityXAxis - The mean of the body angular velocity on the X axis.

MeanBodyAngularVelocityYAxis - The mean of the body angular velocity on the Y axis.

MeanBodyAngularVelocityZAxis - The mean of the body angular velocity on the Z axis.

MeanBodyAngularVelocityJerkXAxis - The mean of the body angular velocity on the X 

axis, derived in time to obtain Jerk signals.

MeanBodyAngularVelocityJerkYAxis - The mean of the body angular velocity on the Y 

axis, derived in time to obtain Jerk signals.

MeanBodyAngularVelocityJerkZAxis - The mean of the body angular velocity on the Z 

axis, derived in time to obtain Jerk signals.

MeanBodyAccelerationMagnitude - The mean of the body acceleration magnitude, 

calculated using the Euclidean norm.

MeanGravityAccelerationMagnitude - The mean of the gravity acceleration magnitude.

MeanBodyAccelerationJerkMagnitude - The mean of the body acceleration magnitude 

derived in time to obtain Jerk signals.

MeanBodyAngularVelocityMagnitude - The mean of the angular velocity magnitude.

MeanBodyAngularVelocityJerkMagnitude - The mean of the angular velocity magnitude 

derived in time to obtain Jerk signals.

MeanFFTBodyAccelerationXAxis - The mean of the body acceleration on the X axis, 

with a Fast Fourier Transform (FFT) applied.

MeanFFTBodyAccelerationYAxis - The mean of the body acceleration on the Y axis, 

with a Fast Fourier Transform (FFT) applied.

MeanFFTBodyAccelerationZAxis - The mean of the body acceleration on the Z axis, 

with a Fast Fourier Transform (FFT) applied.

MeanFFTBodyAccelerationJerkXAxis - The mean of the body acceleration on the X axis, 

derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) 

applied.

MeanFFTBodyAccelerationJerkYAxis - The mean of the body acceleration on the Y axis, 

derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) 

applied.

MeanFFTBodyAccelerationJerkZAxis - The mean of the body acceleration on the Z axis, 

derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) 

applied.

MeanFFTBodyAngularVelocityXAxis - The mean of the body angular velocity on the X 

axis, with a Fast Fourier Transform (FFT) applied.

MeanFFTBodyAngularVelocityYAxis - The mean of the body angular velocity on the Y 

axis, with a Fast Fourier Transform (FFT) applied.

MeanFFTBodyAngularVelocityZAxis - The mean of the body angular velocity on the Z 

axis, with a Fast Fourier Transform (FFT) applied.

MeanFFTBodyAccelerationMagnitude - The mean of the body acceleration magnitude, 

with a Fast Fourier Transform (FFT) applied.

MeanFFTBodyAccelerationJerkMagnitude - The mean of the body acceleration magnitude 

derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) 

applied.

MeanFFTBodyAngularVelocityMagnitude - The mean of the angular velocity magnitude, 

with a Fast Fourier Transform (FFT) applied.

MeanFFTBodyAngularVelocityJerkMagnitude - The mean of the angular velocity 

magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform 

(FFT) applied.

StandardDeviationBodyAccelerationXAxis - The standard deviation of the body 

acceleration on the X axis.

StandardDeviationBodyAccelerationYAxis - The standard deviation of the body 

acceleration on the Y axis.

StandardDeviationBodyAccelerationZAxis - The standard deviation of the body 

acceleration on the Z axis.

StandardDeviationGravityAccelerationXAxis - The standard deviation of the gravity 

acceleration on the X axis.

StandardDeviationGravityAccelerationYAxis - The standard deviation of the gravity 

acceleration on the Y axis.

StandardDeviationGravityAccelerationZAxis - The standard deviation of the gravity 

acceleration on the Z axis.

StandardDeviationBodyAccelerationJerkXAxis - The standard deviation of the body 

acceleration on the X axis, derived in time to obtain Jerk signals.

StandardDeviationBodyAccelerationJerkYAxis - The standard deviation of the body 

acceleration on the Y axis, derived in time to obtain Jerk signals.

StandardDeviationBodyAccelerationJerkZAxis - The standard deviation of the body 

acceleration on the Z axis, derived in time to obtain Jerk signals.

StandardDeviationBodyAngularVelocityXAxis - The standard deviation of the body 

angular velocity on the X axis.

StandardDeviationBodyAngularVelocityYAxis - The standard deviation of the body 

angular velocity on the Y axis.

StandardDeviationBodyAngularVelocityZAxis - The standard deviation of the body 

angular velocity on the Z axis.

StandardDeviationBodyAngularVelocityJerkXAxis - The standard deviation of the body 

angular velocity on the X axis, derived in time to obtain Jerk signals.

StandardDeviationBodyAngularVelocityJerkYAxis - The standard deviation of the body 

angular velocity on the Y axis, derived in time to obtain Jerk signals.

StandardDeviationBodyAngularVelocityJerkZAxis - The standard deviation of the body 

angular velocity on the Z axis, derived in time to obtain Jerk signals.

StandardDeviationBodyAccelerationMagnitude - The standard deviation of the body 

acceleration magnitude, calculated using the Euclidean norm.

StandardDeviationGravityAccelerationMagnitude - The standard deviation of the 

gravity acceleration magnitude.

StandardDeviationBodyAccelerationJerkMagnitude - The standard deviation of the body 

acceleration magnitude derived in time to obtain Jerk signals.

StandardDeviationBodyAngularVelocityMagnitude - The standard deviation of the 

angular velocity magnitude.

StandardDeviationBodyAngularVelocityJerkMagnitude - The standard deviation of the 

angular velocity magnitude derived in time to obtain Jerk signals.

StandardDeviationFFTBodyAccelerationXAxis - The standard deviation of the body 

acceleration on the X axis, with a Fast Fourier Transform (FFT) applied.

StandardDeviationFFTBodyAccelerationYAxis - The standard deviation of the body 

acceleration on the Y axis, with a Fast Fourier Transform (FFT) applied.

StandardDeviationFFTBodyAccelerationZAxis - The standard deviation of the body 

acceleration on the Z axis, with a Fast Fourier Transform (FFT) applied.

StandardDeviationFFTBodyAngularVelocityJerkXAxis - The standard deviation of the 

body angular velocity on the X axis, derived in time to obtain Jerk signals, with a 

Fast Fourier Transform (FFT) applied.

StandardDeviationFFTBodyAngularVelocityJerkYAxis - The standard deviation of the 

body angular velocity on the Y axis, derived in time to obtain Jerk signals, with a 

Fast Fourier Transform (FFT) applied.

StandardDeviationFFTBodyAngularVelocityJerkZAxis - The standard deviation of the 

body angular velocity on the Z axis, derived in time to obtain Jerk signals, with a 

Fast Fourier Transform (FFT) applied.

StandardDeviationFFTBodyAngularVelocityXAxis - The standard deviation of the body 

angular velocity on the X axis, with a Fast Fourier Transform (FFT) applied.

StandardDeviationFFTBodyAngularVelocityYAxis - The standard deviation of the body 

angular velocity on the Y axis, with a Fast Fourier Transform (FFT) applied.

StandardDeviationFFTBodyAngularVelocityZAxis - The standard deviation of the body 

angular velocity on the Z axis, with a Fast Fourier Transform (FFT) applied.

StandardDeviationFFTBodyAccelerationMagnitude - The standard deviation of the body 

acceleration magnitude, with a Fast Fourier Transform (FFT) applied.

StandardDeviationFFTBodyAccelerationJerkMagnitude - The standard deviation of the 

body acceleration magnitude derived in time to obtain Jerk signals, with a Fast 

Fourier Transform (FFT) applied.

StandardDeviationFFTBodyAngularVelocityMagnitude - The standard deviation of the 

angular velocity magnitude, with a Fast Fourier Transform (FFT) applied.

StandardDeviationFFTBodyAngularVelocityJerkMagnitude - The standard deviation of 

the angular velocity magnitude derived in time to obtain Jerk signals, with a Fast 

Fourier Transform (FFT) applied.

## Reference
The materials in coursera

mollybostic  
