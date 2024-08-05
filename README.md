# U.K-MOTOR-VEHICLE-COLLISIONS-ANALYSIS-

## Table of Contents

- [Project Overview](#project-overview)
- [Data Sources](#data-sources)
- [Tools](#tools)
- [Data Cleaning](#data-cleaning)
- [Exploratory Data Analysis](#exploratory-data-analysis) 
- [Data Analysis](#data-analysis) 
- [Results](#results)
- [Recommendation](#recommendation)
- [Limitations](#limitations)
- [References](#references)
- [Conclusion](#conclusion)

### Project Overview 

---
The primary goal of this project is to analyze traffic accident data to identify patterns, high-risk areas, and contributing factors. This analysis aims to provide insights that can help improve road safety and reduce the number of accidents.

![10373829_chopper-crash](https://github.com/user-attachments/assets/90284e27-9868-4d55-ad1d-e7211d4afd66)



### Data Sources

Traffic Accident Data: the primary dataset used for this analysis is the "NYC_Collisions" , containg detailed information about accident that occurred in the United Kingdom.

### Tools

- Excel - Data Cleaning
  - [Download Here](https://mavenanalytics.io/data-playground?order=date_added%2Cdesc&page=10&pageSize=5)
- MYSQL - Data Analysis 
- PowerPoint - Data Presentation


### Data Cleaning

In the initial data preparation phase, We performed the following tasks:
1. Data loading and inspection.
2. Handling missing Values.
3. Data Cleaning and Formatting.

### Exploratory Data Analysis
EDA involved exploring Traffic Accident Data to answer key questions, such as:

- Compare the % of total accidents by month. Do you notice any seasonal patterns?
- Break down accident frequency by day of week and hour of day. Based on this data, when do accidents occur most frequently?
- On which particular street were the most accidents reported? What does that represent as a % of all reported accidents?
- What was the most common contributing factor for the accidents reported? What about for fatal accidents specifically?

### Data Analysis

Include some interesting codes/features worked with

```MYSQL
SELECT     DAYOFWEEK(date) AS day_of_week,     COUNT(*) AS accident_count FROM     NYC_Collisions
GROUP BY    
 DAYOFWEEK(date);
```

### Results

The analysis results are summarized as follows: 

- ### Late Afternoon to Early Evening: 
  The highest number of accidents occurs between 14:00 (2 PM) and 17:00 (5 PM), with the peak at 16:00 (3 PM) with 15,065 accidents.
- ### Evening Hours: 
  There are also significant numbers of accidents between 18:00 (6 PM) and 20:00 (8 PM), with 18:00 having 13,673 accidents.
- ### Early Morning: 
  The lowest accident counts are observed between 2:00 (2 AM) and 5:00 (5 AM), with the lowest at 3:00 (3 AM) with 4,310 accidents.
- ### Morning to Midday:
  There is a noticeable increase in accidents starting from 6:00 (6 AM), with counts gradually rising and peaking in the afternoon.

- ### Early Morning:
  The early morning hours have the fewest accidents, likely due to lower traffic volumes during these times.
- ### Steady Increase:
  Starting from 6 AM, accidents increase and remain relatively high through the morning and afternoon until peaking in the late afternoon. 
- ### Rush Hours:
  The data suggests that accidents are most frequent during the typical rush hours, particularly in the late afternoon and early evening. This could be due to increased traffic as people commute home from work.

### Recommendation

Based on the Analysis, We Recommend the following actions:
- Enhance data collection processes to reduce the number of unspecified contributing factors in accident reports.
- Implement standardized reporting practices across all agencies to ensure consistency.
- Install speed cameras in high-risk areas to enforce speed limits.
- Implement traffic calming measures such as speed bumps and roundabouts to reduce speeding.
- Implement stricter penalties for using mobile devices while driving
- Promote public awareness campaigns about the dangers of driving under the influence.

### Limitations 

A significant number of accidents have unspecified contributing factors, which limits the ability to identify precise causes and trends.


### References  

- City of New York. (n.d.). Motor Vehicle Collisions. Retrieved from 
  - [NYC Open Data](http://www.nyc.gov/html/nypd/html/traffic_reports/motor_vehicle_collision_data.shtml)
 
### Conclusion

This project was an incredible learning experience in using MySQL for data analysis. It provided valuable insights into traffic accidents and highlighted areas for improving road safety. I look forward to applying these skills to more complex datasets and contributing to data-driven decision-making processes.
 



