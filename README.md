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

For this segment we have created a machine learning model, created an arima model, used Google slides to start our presentation, and individually committed to our branches of the repo before merging.

[Google Slides](https://docs.google.com/presentation/d/1GVAT41msW3DNEXlcEjHS8knw2S0NamJewoWL63OJ63c/edit?usp=sharing)

##### Who worked on what?

- Andrew: Presentation, Tableau, Merge reviews
- Kevin: Machine Learning Model, Python, Merge reviews
- Kimber: Presentation, Tableau, Merge reviews
- Ryan: Machine Learning Model, Python, Merge reviews

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


### Project Challenges (to be completed as they present)


### Summary (to be completed after analysis)

