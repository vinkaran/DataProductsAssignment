Coursera Data Products Assignment
========================================================
author: Vinodh Venkatraman
date: 17-May-2016
autosize: true

Finding the Calories Burned by means of Sex, Age, Weight, Heart Rate and Workout Time
========================================================

- The Formula is based on the website  http://fitnowtraining.com/2012/01/formula-for-calories-burned/
- For men formula is [(Age x 0.2017) — (Weight x 0.09036) + (Heart Rate x 0.6309) — 55.0969] x Time / 4.184. 
- For Women formula is [(Age x 0.074) — (Weight x 0.05741) + (Heart Rate x 0.4472) — 20.4022] x Time / 4.184.

========================================================
UI Code Does the following

- Collecting data for Sex, Age, Weight, Heart Rate and Workout Time


========================================================
And Server code uses the above mention formula as 

Calories <- if(Sex == 'Male')  { ((((Age * 0.2017) - (Weight * 0.09036) + (HeartRate * 0.6309) - 55.0969)) * Wtime)/4.184 } 
              else  {((((Age * 0.074) - (Weight * 0.05741) + (HeartRate * 0.4472) - 20.4022)) * Wtime)/4.184 }
  
