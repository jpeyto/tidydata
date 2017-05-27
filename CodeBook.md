# Code Book
## Human Activity Recognition Using Smartphones 
### A tidy data set
This Code Book explains the tidy data set produced by the run_analysis.R script.
##  Data Frame
| Subject       | Activity	 | Variable  | Value  |
| ------------- | -------------- | ----- | ------ |
| Subject ID    | Activity description  | Description of variable |  Measurement |
### Subject
This is the identifier of the subject, represented as an int with range [1,30]
### Activity
This is a description of the activity, represented as one of the following factors:
*Standing
*Sitting
*Laying
*Walking
*Walking_Downstairs
*Walking_Upstairs
### Variable
This is a description of the variable that is measured. Each description is composed of a combination of the following descriptors.
## Variable Descriptions
| Descriptor               | Meaning                                                                             |
| ------------------------ | ----------------------------------------------------------------------------------- |
| Frequency or Time        | Identifies if the measurement is in time or frequency domain                        |
| Body or Gravity          | Acceleration signals have been separated into body and gravity acceleration signals |
| Acclerometer or Gyro     | Measuremeants are obtained from accelerometers or gyroscopes                        |
| Jerk                     | Indicates a jerk signal derived from linear acceleration and angular velocity       |
| Magnitude                | The magnitude of three-dimensional signals                                          |
| X-axis, Y-axis or Z-axis | Identifies the axis for 3-axial signals                                             |
| Mean or StdDev           | mean() or std() measurement                                                         |
### Value
The value of the measurement for a given subject and activity.


