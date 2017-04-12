# Google Trend Analyzer
### Introduction
Rudimentary Analysis of Google Trends and its visualization of using R.  
This was a final class project from a UC Berkeley class in *Concepts in Computing with Data*  
The Final report can be found [here](https://github.com/VictoryJin/Trend_Analyzer/blob/master/Report/Final_Report_.pdf), or under Report/Final_Report_.pdf.  
The source codes for cleansing and visualization are found [here](https://github.com/VictoryJin/Trend_Analyzer/blob/master/Code).  
The report content is written by **Audrey Webb, Victor Jin, Arion Thai, and Mehma Bhasin.**  
The .rmd file for generating the report, as well as its codes for data cleansing, analysis, and visualization, is written by Victor Jin and Arion Thai.  
### Data extraction
Economic data from *United States, Canada, South Africa, and Ireland* were extracted from [WorldBank](http://data.worldbank.org/), and the search frequency from [Google Trends](https://www.google.com/trends/).  
The two main variables in question were "unemployment" and "inflation", and we were curious whether the search frequency in Google had any correlation with actual economic trends over time.

### Challenges
The first challenge was choosing the countries that would best represent the actual correlation. We first tried simple random sampling from all the countries available from World Bank Data, and then stratified sampling. Then we found out that not all data were available.  
The next challenge was to find countries that had used Google frequently, since countries that has low prevalence of Google will not display accurate data. In the end, we chose our four countries by filtering the top 4 countries that had the most search frequency for the economic terms of interest.  

### Conclusions
![alt tag](https://github.com/VictoryJin/Trend_Analyzer/blob/master/Images/US%20Unemployment%20Comparison.png)  
We've discovered a correlation between google searches and key economic variables, but only so in countries that already use Google widely as its primary search engine. The more frequently Google is used by users, the more prevalent the variation in search terms explaining the variation in economic factors.

### Limitations and Possible Improvements  
* purposeful selection in our sample results in bias in terms of our modeling  
* extrapolation is not not applicable to every country
* lack of data made it harder for us to reach a conclusion, especially since many countries did not have google search data

### Functions
##### [Cleaning](https://github.com/VictoryJin/Trend_Analyzer/tree/master/Code/Cleaning)
* clean_wrld(rawdirc, x, directory = "./data/") - outputs a 'cleaned' data file  
  - rawdirc - directory of the folder that contains the raw file  
  - x - name of file; selects 2006:2013 and Canada, New Zealand, South Africa, and United States and creates a new data frame
  - directory = outputs the new dataframe into directory

##### [Analysis](https://github.com/VictoryJin/Trend_Analyzer/tree/master/Code/Analysis)
* rel_freq(file, data = "data") - parses data from the 'cleaned' data file and finds averages of each year
  - file - inputs 'cleaned' data file from above Functions

##### [+ 200 lines of plot code](https://github.com/VictoryJin/Trend_Analyzer/tree/master/Code/Analysis)
