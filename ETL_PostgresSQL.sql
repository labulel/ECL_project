-- Create tables for raw data to be loaded into
CREATE TABLE calendar (
Day_of_Week varchar(255),
Name varchar(255),
Type varchar(255),
Details varchar(255),
Year int,
Month varchar(255),
Day varchar(255),
Date date
);

CREATE TABLE trump_tweets(
id bigint,
link text,
content text,
retweets int,
favorites int,
mentions varchar(255),
hashtags varchar(255),
Date date,
Time varchar(255),
Year varchar(255),
Month varchar(255),
Day varchar(255)
);
