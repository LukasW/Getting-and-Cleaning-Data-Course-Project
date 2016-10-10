Codebook
========

Data Set Information
--------------------

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For more information see [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

Attribute Information
---------------------

Each record in the dataset consists of:
- The subject (an identifier of the subject who carried out the experiment)
- An activity type (e.g. WALKING)
- For each sensor signal the mean value and its standard deviation

### Sensor Signal

These signals were used to estimate variables of the feature vector for each pattern:  
'_XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tbodyacc-XYZ
- tgravityacc-XYZ
- tbodyaccjerk-XYZ
- tbodygyro-XYZ
- tbodygyrojerk-XYZ
- tbodyaccmag
- tgravityaccmag
- tbodyaccjerkmag
- tbodygyromag
- tbodygyrojerkmag
- fbodyacc-XYZ
- fbodyaccjerk-XYZ
- fbodygyro-XYZ
- fbodyaccmag
- fbodyaccjerkmag
- fbodygyromag
- fbodygyrojerkmag

The set of variables that were estimated from these signals are: 

- \_mean\_: Mean value
- \_std\_: Standard deviation
