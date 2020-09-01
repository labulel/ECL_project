# ETL Project Report

## Database Description
Our Tweets database contains Trump tweets as well as major events and holidays within the US that can be analyzed to determine: 
1) Trump's Most active time of the day on Twitter
2) Tweet volume around major US events and holidays
3) Average number of tweets per period of times
4) Most liked and favourited tweets

## Data Sources
**1. Tump Tweets**
  * https://www.kaggle.com/austinreese/trump-tweets?select=realdonaldtrump.csv

**2. Calendar**
  * https://www.timeanddate.com/holidays/us/

## Data Extraction, Transformation & Loading

### Extract
**1. Tump Tweets**
- Downloaded the realdonaldtrump tweets as a csv file from kaggle database
- Imported the csv file into Jupyter Notebook using Pandas

**2. Calendar**
- Used a for loop to iterate through the calendar years from 2009 to 2020 from timeanddate
- Within loop, used Pandas read_html to scrape the calendar tabel into lists

### Transform
**1. Tump Tweets**
- Split the DateTime column into both Date and Time columns amd inserted them into the realdonaldtrump dataframe
- Further split the newly created Date column into separate columns for Year, Month and Day for easier analysis
- Created a new DataFrame of Trump Tweets with the columns needed for analysis
- Trump Tweets DataFrame:
  * id, link,	content,	retweets,	favorites,	mentions,	hashtags,	Date,	Time,	Year,	Month,	Day

**2. Calendar**
- Within a for loop converted the calendar lists into DataFrames, renamed a column and droped an index 
- Consolidated the DataFrames into one large Calendar DataFrame
- Split the Date column into both Month and Day columns and converted the Months into its numeric value (eg. "Jan":"01")
- Created a new DataFrame and added a Date column by combining the Year, Month and Day columns through the datetime function
- Calendar DataFrame:
  * Day_of_Week,	Name,	Type,	Details,	Year,	Month,	Day,	Date

### Load
**1. PostgresSQL**
- Created a tweets Database that included two tables: trump_tweets and calendar
- Defined column headings for the tables that correspond to the DataFrames
- [SQL Query](ETL_PostgresSQL.sql)

**2. Trump Tweets and Calendar**
- Using sqlalchemy, created a connection to the local PostgresSQL tweets Database
- Imported both the Trump Tweets and Calendar DataFrames into the tweets Database
