select *
From DashboardProject..disneyplus

--Extract distinct types (movies or TV shows)
select DISTINCT type
From DashboardProject..disneyplus

-- Extract relevant details (Release year,Title,Genre,Duration)

Select YEAR(date_added ) as release_year,title,duration
From DashboardProject..disneyplus

--Assuming you have country information in  dataset

Select country,COUNT(*) as total_shows
From DashboardProject..disneyplus
Group by country

--Get the top 10 genres based on show count

select TOP 10 disney.genre,COUNT(*) as show_count
From DashboardProject..disneyplus as disney
Group by disney.genre
Order by show_count DESC

--Count of shows by type

Select type,COUNT(*) as show_count
From DashboardProject..disneyplus
Group by type

--count of shows by release year and type

Select YEAR (release_year) as release_year,type,COUNT(*) as show_count
FROM DashboardProject..disneyplus
Group by release_year,type

--Get the top 12 ratings

Select TOP 12 title,rating
From DashboardProject..disneyplus
Order by rating desc

--Assuming cast table and join with the main data

Select show_id,title,cast
From DashboardProject..disneyplus

--Extracting title and description

Select title,description
From DashboardProject..disneyplus


