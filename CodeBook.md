# Code Book
## Human Activity Recognition Using Smartphones 
### A tidy data set
This Code Book explains the tidy data set produced by the run_analysis.R script.
The data contains only mean and standard deviation measurements (i.e. mean() and std()) from the Human Activity Recognition Using Smartphones data set.
##  Data Frame
| Subject       | Activity	 | Variable  | Value  |
| ------------- | -------------- | ----- | ------ |
| Subject ID    | Activity description  | Description of variable |  Measurement |
### Subject
This is the identifier of the subject, represented as an int with range [1,30]
### Activity
This is a description of the activity, represented as one of the following factors:
 Activity Discription      | Meaning                                  |
| ------------------------ | ---------------------------------------- |
| Standing                 | Subject is standing up                   |
| Sitting                  | Subject is sitting down                  |
| Laying                   | Subject is laying down                   |
| Walking                  | Subject is walking (on flat surface)     |
| Walking_Downstairs       | Subject is walking down a set of stairs  |
| Walking_Upstairs         | Subject is is up a set of stairs         |
### Variable
Each variable is described by one of 66 unique factors. Each factor is composed of a combination of the following descriptors separated by underscores (_).
####
| Descriptor               | Meaning                                                                             |
| ------------------------ | ----------------------------------------------------------------------------------- |
| Frequency or Time        | Identifies if the measurement is in time or frequency domain                        |
| Body or Gravity          | Acceleration signals have been separated into body and gravity acceleration signals |
| Acclerometer or Gyro     | Measuremeants are obtained from accelerometers or gyroscopes                        |
| Jerk                     | Indicates a jerk signal derived from linear acceleration and angular velocity       |
| Magnitude                | The magnitude of three-dimensional signals                                          |
| X-axis, Y-axis or Z-axis | Identifies the axis for 3-axial signals                                             |
| Mean or StdDev           | mean() or std() measurement                                                         |
#### Variable Descriptions
* Time_Body_Accelerometer_Mean_X-axis
* Time_Body_Accelerometer_Mean_Y-axis
* Time_Body_Accelerometer_Mean_Z-axis
* Time_Body_Accelerometer_StdDev_X-axis
* Time_Body_Accelerometer_StdDev_Y-axis
* Time_Body_Accelerometer_StdDev_Z-axis
* TimeGravity_Accelerometer_Mean_X-axis
* TimeGravity_Accelerometer_Mean_Y-axis
* TimeGravity_Accelerometer_Mean_Z-axis
* TimeGravity_Accelerometer_StdDev_X-axis
* TimeGravity_Accelerometer_StdDev_Y-axis
* TimeGravity_Accelerometer_StdDev_Z-axis
* Time_Body_Accelerometer_Jerk_Mean_X-axis
* Time_Body_Accelerometer_Jerk_Mean_Y-axis
* Time_Body_Accelerometer_Jerk_Mean_Z-axis
* Time_Body_Accelerometer_Jerk_StdDev_X-axis
* Time_Body_Accelerometer_Jerk_StdDev_Y-axis
* Time_Body_Accelerometer_Jerk_StdDev_Z-axis
* Time_Body_Gyro_Mean_X-axis
* Time_Body_Gyro_Mean_Y-axis
* Time_Body_Gyro_Mean_Z-axis
* Time_Body_Gyro_StdDev_X-axis
* Time_Body_Gyro_StdDev_Y-axis
* Time_Body_Gyro_StdDev_Z-axis
* Time_Body_Gyro_Jerk_Mean_X-axis
* Time_Body_Gyro_Jerk_Mean_Y-axis
* Time_Body_Gyro_Jerk_Mean_Z-axis
* Time_Body_Gyro_Jerk_StdDev_X-axis
* Time_Body_Gyro_Jerk_StdDev_Y-axis
* Time_Body_Gyro_Jerk_StdDev_Z-axis
* Time_Body_Accelerometer_Magnitude_Mean
* Time_Body_Accelerometer_Magnitude_StdDev
* TimeGravity_Accelerometer_Magnitude_Mean
* TimeGravity_Accelerometer_Magnitude_StdDev
* Time_Body_Accelerometer_Jerk_Magnitude_Mean
* Time_Body_Accelerometer_Jerk_Magnitude_StdDev
* Time_Body_Gyro_Magnitude_Mean
* Time_Body_Gyro_Magnitude_StdDev
* Time_Body_Gyro_Jerk_Magnitude_Mean
* Time_Body_Gyro_Jerk_Magnitude_StdDev
* Frequency_Body_Accelerometer_Mean_X-axis
* Frequency_Body_Accelerometer_Mean_Y-axis
* Frequency_Body_Accelerometer_Mean_Z-axis
* Frequency_Body_Accelerometer_StdDev_X-axis
* Frequency_Body_Accelerometer_StdDev_Y-axis
* Frequency_Body_Accelerometer_StdDev_Z-axis
* Frequency_Body_Accelerometer_Jerk_Mean_X-axis
* Frequency_Body_Accelerometer_Jerk_Mean_Y-axis
* Frequency_Body_Accelerometer_Jerk_Mean_Z-axis
* Frequency_Body_Accelerometer_Jerk_StdDev_X-axis
* Frequency_Body_Accelerometer_Jerk_StdDev_Y-axis
* Frequency_Body_Accelerometer_Jerk_StdDev_Z-axis
* Frequency_Body_Gyro_Mean_X-axis
* Frequency_Body_Gyro_Mean_Y-axis
* Frequency_Body_Gyro_Mean_Z-axis
* Frequency_Body_Gyro_StdDev_X-axis
* Frequency_Body_Gyro_StdDev_Y-axis
* Frequency_Body_Gyro_StdDev_Z-axis
* Frequency_Body_Accelerometer_Magnitude_Mean
* Frequency_Body_Accelerometer_Magnitude_StdDev
* Frequency_BodyBody_Accelerometer_Jerk_Magnitude_Mean
* Frequency_BodyBody_Accelerometer_Jerk_Magnitude_StdDev
* Frequency_BodyBody_Gyro_Magnitude_Mean
* Frequency_BodyBody_Gyro_Magnitude_StdDev
* Frequency_BodyBody_Gyro_Jerk_Magnitude_Mean
* Frequency_BodyBody_Gyro_Jerk_Magnitude_StdDev
### Value
The value of the measurement for a given subject and activity.


