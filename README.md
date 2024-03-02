 DisneyPlusHotstar PowerBI Project

Overview
This project aims to analyze user engagement and content performance data for DisneyPlusHotstar using PowerBI. By visualizing key metrics and insights, this analysis aims to provide stakeholders with actionable information to enhance user experience and optimize content strategies.

Features
- Interactive dashboards displaying user engagement metrics such as viewership trends, user demographics, and content performance.
- Customized reports highlighting key insights and trends.
- Drill-down functionality to explore data at granular levels.
- Integration with DisneyPlusHotstar data sources for real-time updates.

Requirements
- Microsoft PowerBI Desktop 
- Access to DisneyPlusHotstar data sources or relevant datasets
- Internet connection for real-time data updates (if applicable)

Installation
1. Clone this repository to your local machine.
2. Open the PowerBI Desktop application.
3. Open the main `.pbix` file located in the cloned repository.
4. If prompted, connect to your DisneyPlusHotstar data sources or import relevant datasets.
5. Customize the dashboard and reports as needed.
6. Save your changes.

Usage
1. Open the PowerBI Desktop application.
2. Navigate to the location where you saved the `.pbix` file.
3. Open the file to view the dashboard and reports.
4. Interact with the visualizations to explore the data.
5. Use filters, slicers, and drill-down options to gain deeper insights.
6. Share the reports with stakeholders as needed.

Contributing
Contributions to improve this PowerBI project are welcome. You can contribute by:
- Reporting issues or bugs
- Suggesting new features or enhancements
- Submitting pull requests with improvements

Acknowledgements
- Special thanks to DisneyPlusHotstar for providing access to the data.
- Thanks to the PowerBI community for valuable resources and support.

Certainly! Below is a README file tailored for your DisneyPlusHotstar project:

---

# DisneyPlusHotstar Data Analytics Project

## Overview
This project focuses on analyzing user engagement and content performance data for DisneyPlusHotstar using Excel, MySQL, and PowerBI. By leveraging these tools, the project aims to extract valuable insights from a large dataset comprising approximately 82k rows of data. The analysis will uncover trends, patterns, and demographics to enhance user experience and optimize content strategies for DisneyPlusHotstar.

## Tools Used
- Excel: For initial data exploration, cleaning, and basic analysis.
- MySQL: For storing and querying the dataset to extract relevant information.
- PowerBI: For creating dynamic dashboards and visualizations to present insights.

## Datasets Used
- DisneyPlusHotstar user engagement and content performance data (approx. 82k rows).

## Business Problem
DisneyPlusHotstar aims to gather useful insights on their shows and movies to enhance their subscribers' experience. The challenge lies in effectively analyzing a vast amount of data to extract meaningful insights. This project aims to provide a robust and scalable data analytics solution to handle the extensive dataset and uncover valuable patterns and trends.

## How I Plan on Solving the Problem
By leveraging SQL and PowerBI, this project will extract relevant information from the DisneyPlusHotstar dataset and conduct insightful analyses. SQL queries will be used to uncover key metrics such as viewer ratings, popularity trends, genre preferences, and viewership patterns. The data will then be visualized using PowerBI to present findings in an interactive dashboard format, allowing stakeholders to gain actionable insights through visually appealing charts, graphs, and interactive visualizations.

## Questions I Wanted to Answer From the Dataset
1. --Extract distinct types (movies or TV shows)
select DISTINCT type
From DashboardProject..disneyplus
```
2. -- Extract relevant details (Release year,Title,Genre,Duration)

Select YEAR(date_added ) as release_year,title,duration
From DashboardProject..disneyplus
```
3. --Assuming you have country information in  dataset

Select country,COUNT(*) as total_shows
From DashboardProject..disneyplus
Group by country

--Get the top 10 genres based on show count

select TOP 10 disney.genre,COUNT(*) as show_count
From DashboardProject..disneyplus as disney
Group by disney.genre
Order by show_count DESC
```
4. --Count of shows by type

Select type,COUNT(*) as show_count
From DashboardProject..disneyplus
Group by type

--count of shows by release year and type

Select YEAR (release_year) as release_year,type,COUNT(*) as show_count
FROM DashboardProject..disneyplus
Group by release_year,type
```

## Conclusion
This project aims to provide DisneyPlusHotstar with valuable insights into their content performance and user engagement. By leveraging Excel, MySQL, and PowerBI, the analysis will uncover key trends and patterns, allowing DisneyPlusHotstar to optimize their content strategies and enhance their subscribers' viewing experience.

---

