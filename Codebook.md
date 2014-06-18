### Cookbook  
  
This is a list of all the variables contained in complete/summary datasets. The same set of  
variables are contained in both datasets, the different is the summary takes the complete  
dataset and gives a mean of each measurement grouped by Subject and Activity.   
   
    
1 "Group" This indicates if the subject is assigned to the training or test groups.  
2 "Subject" This is the subject id, numbered from 1 to 30.  
3 "Activity" This is a factor variable that describes the activity a subject was doing    
  when the measurement was taken.  

  
#### Mean of measurements:  

##### The accleration measurements from the acclerometer split into two components, body and gravity:  
  
4 "tBodyAcc.mean...X"  
5 "tBodyAcc.mean...Y"  
6 "tBodyAcc.mean...Z"  
  
7 "tGravityAcc.mean...X"  
8 "tGravityAcc.mean...Y"  
9 "tGravityAcc.mean...Z"  
   
##### A Jerk measurement for body accleration obtained from body linear acceleration   
##### and angular velocity:  
  
10 "tBodyAccJerk.mean...X"  
11 "tBodyAccJerk.mean...Y"  
12 "tBodyAccJerk.mean...Z"  
  
##### Measurements from the gyrometer:  
    
13 "tBodyGyro.mean...X"  
14 "tBodyGyro.mean...Y"  
15 "tBodyGyro.mean...Z"  
  
##### A Jerk measurement for gyroscopic signals:    
  
16 "tBodyGyroJerk.mean...X"  
17 "tBodyGyroJerk.mean...Y"  
18 "tBodyGyroJerk.mean...Z"  
  
##### Magnitudes of all of the above calculated using Euclidean norm:  
    
19 "tBodyAccMag.mean.."  
20 "tGravityAccMag.mean.."  
21 "tBodyAccJerkMag.mean.."  
22 "tBodyGyroMag.mean.."  
23 "tBodyGyroJerkMag.mean.."  
  
##### Each of the above measurements had a fast fourier transform (FFT) applied to the data:  
  
24 "fBodyAcc.mean...X"  
25 "fBodyAcc.mean...Y"  
26 "fBodyAcc.mean...Z"  

27 "fBodyAccJerk.mean...X"  
28 "fBodyAccJerk.mean...Y"  
29 "fBodyAccJerk.mean...Z"  

30 "fBodyGyro.mean...X"  
31 "fBodyGyro.mean...Y"  
32 "fBodyGyro.mean...Z"  
  
33 "fBodyAccMag.mean.."  
34 "fBodyBodyAccJerkMag.mean.."  
35 "fBodyBodyGyroMag.mean.."  
36 "fBodyBodyGyroJerkMag.mean.."  
  
#### Standard deviation of the above measurements:  
  
37 "tBodyAcc.std...X"  
38 "tBodyAcc.std...Y"  
39 "tBodyAcc.std...Z"  
  
40 "tGravityAcc.std...X"  
41 "tGravityAcc.std...Y"  
42 "tGravityAcc.std...Z"  
  
43 "tBodyAccJerk.std...X"  
44 "tBodyAccJerk.std...Y"  
45 "tBodyAccJerk.std...Z"  
  
46 "tBodyGyro.std...X"  
47 "tBodyGyro.std...Y"  
48 "tBodyGyro.std...Z"  
  
49 "tBodyGyroJerk.std...X"  
50 "tBodyGyroJerk.std...Y"  
51 "tBodyGyroJerk.std...Z"  
  
52 "tBodyAccMag.std.."  
53 "tGravityAccMag.std.."  
54 "tBodyAccJerkMag.std.."  
55 "tBodyGyroMag.std.."  
56 "tBodyGyroJerkMag.std.."  
  
##### The standard deviations of measurements that had a FFT applied:  
  
57 "fBodyAcc.std...X"  
58 "fBodyAcc.std...Y"  
59 "fBodyAcc.std...Z"  
  
60 "fBodyAccJerk.std...X"  
61 "fBodyAccJerk.std...Y"  
62 "fBodyAccJerk.std...Z"  
  
63 "fBodyGyro.std...X"  
64 "fBodyGyro.std...Y"  
65 "fBodyGyro.std...Z"  
  
66 "fBodyAccMag.std.."  
67 "fBodyBodyAccJerkMag.std.."  
68 "fBodyBodyGyroMag.std.."  
69 "fBodyBodyGyroJerkMag.std.."
  