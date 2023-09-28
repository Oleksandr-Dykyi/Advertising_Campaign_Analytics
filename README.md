## Advertising_Campaign_Analytics

#### Technology Stack:
PostgreSQL (data aggregation, CTE, joins, union), Looker Studio (dashboard creation)

#### Project Description:
In this project, I leveraged PostgreSQL and Looker Studio to analyze advertising campaign data. The project involved data from three database tables: facebook_ads_basic_daily, facebook_campaign, and google_ads_basic_daily.

I began by constructing a SQL query with Common Table Expressions (CTE) to combine data from these tables, resulting in the following metrics: ad_date (date of ad display in Google and Facebook), campaign_name (campaign name in Google and Facebook), spend, impressions, reach, clicks, leads, and value for each campaign on the respective days.

I then crafted an SQL query that selected data from the combined table (CTE) to calculate the aggregated values for the following metrics: total cost, number of impressions, number of clicks, and total value of conversions, grouped by ad_date and campaign_name.

Subsequently, in Looker Studio, I created a new report, set up a data source, and established a connection to the PostgreSQL database using a custom SQL query. Within the report, I introduced new fields, including Amount of Ad Spend, CPC, CPM, CTR, and ROMI.

To visualize the data effectively, I incorporated three charts into the dashboard:
1. A combined chart displaying ad run dates on the horizontal axis and Ad Spend and ROMI for each month on two vertical axes, sorted chronologically.
2. A line graph illustrating the number of active campaigns per month.
3. A table with columns and heatmaps, presenting campaign names as dimensions and metrics such as total Ad Spend, CPC, CPM, CTR, and ROMI.
I also added filters to the report for campaign names and display dates, enhancing the report's interactivity.

#### Looker Studio Link:
https://lookerstudio.google.com/reporting/7b8937f4-c4ad-4060-847f-555caeb23ad3

#### Skills:
SQL, PostgreSQL, DBeaver, Looker Studio, Business Intelligence (BI)
