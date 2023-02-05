# exploring world emissions

## Table of Contents
- [Overview of Project](#overview-of-project)
- [Project Notes](#project-notes)
    - [Segment 1](#segment-1)
    - [Segment 2](#segment-2)
    - [Segment 3](#segment-3)
    - [Segment 4](#segment-4)
- [Resources](#resources)
- [Project Challenges](#project-challenges)
- [Summary](#summary)


### Overview of project
Our team has decided to take a deeper look into the correlation found between global emissions, population, and temperatures using machine learning to formulate classes and predictions to create visualizations. 

### Project notes

#### Segment 1
 
  For this segment we have cleaned the data, created tables for our database which we have saved as CSV files (listed below), and individually committed to our branches of the repo before merging.

  The team selected datasets concerning emissions by country, global temperature trends, and world population. We all agreed that we would like something measurable and scientific to work on for our project. We wanted a subject we all cared about that would also be an interesting subject to present. 
  
  We plan to use this data to show trends over the last 20-60 years whether it be an increase or decrease of emissions, and we want to use machine learning to predict future temperatures.

##### Who worked on what?

- Andrew: Cleaning data, SQL, Database, Merge reviews
- Kevin: Cleaning data, Python, Merge reviews
- Kimber: Readme, VS code, Merge reviews
- Ryan: Cleaning Data, Repository creation, GitHub, Merge reviews

##### Segment 1 Challenges:

The data we selected seems to have come from different sources that had different objectives, so we had some trouble cleaning the data in a way that allowed us to join the tables on the country and year of collection. 

The data set we selected went back to the 18th century, and as a group we had to decide what we would keep and what we would drop. This also helped in creating the initial database.

##### Original CSV Files:

- [emission_cleaned.csv](exploring_world_emissions/Resources/emission_cleaned)

- [Temperature_Change.csv](exploring_world_emissions/Resources/Temperature_Change.csv)

- [world_population_by_year.csv](exploring_world_emissions/Resources/world_population_by_year)

##### ERD Model

![Screen Shot 2023-01-30 at 8 21 20 PM](https://user-images.githubusercontent.com/111471057/215635353-182093b8-1cc8-4dbe-bd64-b838d0e5e322.png)

#### Segment 2

For this segment we have created machine learning models, visuals using Tableau,  Google slides for our presentation, and individually committed to our branches of the repo before merging.

<img width="1506" alt="Screen Shot 2023-01-30 at 9 27 49 PM" src="https://user-images.githubusercontent.com/111471057/215646576-b84f66df-f3d4-40d8-841b-cf396ab93749.png">

We have added charts showing total emissions by country (example is from 2021 data), Emissions per capita (example is from 2021 data), and a line graph showing emissions trends over time by country and per capita. 

![emissions_temp_change](https://user-images.githubusercontent.com/111471057/215646758-c21a31fd-6249-4668-97cf-ffb82b17434c.png)

Our machine learning models show that, while global emissions are going up, some countries are reducing their emissions, but global temperatures continue to rise.

##### Who worked on what?

- Andrew: Presentation, Tableau, Merge reviews
- Kevin: Machine Learning Model, Python, Merge reviews
- Kimber: Presentation, Tableau, Merge reviews
- Ryan: Arima Model, Python, Merge reviews

##### Segment 2 Challenges:

When creating the machine learning model we had trouble finding correlation between global temperatures and emissions. We found this was due to countries having reduced their own emissions in recent years. We also had trouble creating an arima model with good accuracy output.

#### Segment 3

For this segment we refined our machine learning models, presentation, and visual dashboard.

##### Who worked on what?

- Andrew: Presentation, Tableau, Merge reviews
- Kevin: Machine Learning Model, Python, Merge reviews
- Kimber: README, Presentation, Tableau, Merge reviews
- Ryan: Machine Learning Model, Python, Merge reviews

### Resources
Source Data:

- [Temperature Trends](https://www.kaggle.com/datasets/thedevastator/global-land-and-surface-temperature-trends-analy?select=GlobalTemperatures.csv)
  - this data set covers temperature changes
  - cleaned data was saved into a new table

- [World population](https://www.kaggle.com/datasets/iamsouravbanerjee/world-population-dataset)
  - this data set includes world population
  - cleaned data was saved into a new table
  
- [Emissions by Country](https://www.kaggle.com/datasets/thedevastator/global-fossil-co2-emissions-by-country-2002-2022)
  - this data set has our emissions measurements by country
  - cleaned data was saved into a new table

Presentation:
- [Tableau Dashboard](https://public.tableau.com/app/profile/kimber.evans/viz/ExploringWorldEmissions/Dashboard1?publish=yes)
- [Google Slides](https://docs.google.com/presentation/d/1GVAT41msW3DNEXlcEjHS8knw2S0NamJewoWL63OJ63c/edit?usp=sharing)

### Project Challenges

- Too much data and too little data
- SQL foreign keys 
- ARIMA model - Creating working model
- Temperature change is a global phenomenon and emissions do not follow the same pattern for all countries

### Project Challenges

- Too much data and too little data
- SQL foreign keys 
- ARIMA model - Creating working model
- Temperature change is a global phenomenon and emissions do not follow the same pattern for all countries

### Future Plans

- More machine learning experience may lead to better models
- If we had more time we would explore the data we have for the emissions sources
- If we had more time we would create more tableau visualizations for temperature changes by country

### Summary 

A basic linear regression model performed the best on our dataset across all countries. That being said, temperature changes fluctuate based on a wide variety of factors that cannot be accurately predicted by emissions or population data alone. Additionally, temperature changes are a global phenomenon. Therefore, the temperature change in any specific country cannot accurately be predicted by its emissions or population data. If global emissions continue to increase, then temperatures in every single country will continue to increase. In conclusion, if we want to stop temperature increases, there must be a global effort to reduce emissions.
