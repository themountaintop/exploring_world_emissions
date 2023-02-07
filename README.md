# exploring world emissions

## Table of Contents
- [Overview of Project](#overview-of-project)
- [Project Notes](#project-notes)
    - [Segment 1](#segment-1)
    - [Segment 2](#segment-2)
    - [Segment 3](#segment-3)
- [Project Challenges](#project-challenges)
- [Summary](#summary)
- [Resources](#resources)


### Overview of project
Our team has decided to take a deeper look into the correlation found between global emissions, population, and temperatures using machine learning to formulate classes and predictions to create visualizations. 

### Project notes

#### Segment 1
 
  For this segment we have cleaned the data, created tables for our database which we have saved as CSV files (listed below), and individually committed to our branches of the repo before merging.

  The team selected datasets concerning emissions by country, global temperature trends, and world population. We all agreed that we would like something measurable and scientific to work on for our project. We wanted a subject we all cared about that would also be an interesting subject to present. 
  
  We want to use this data to answer a few questions:
  - What are the emission trends over the last 20-60 years?
  - Can we use machine learning to predict future temperatures?
  - Is there a correlation between global temperature and rising emissions?

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

Our analysis show that, while global emissions are going up, some countries are reducing their emissions, but global temperatures continue to rise.

##### Who worked on what?

- Andrew: Presentation, Tableau, Merge reviews
- Kevin: Machine Learning Model, Python, Merge reviews
- Kimber: Presentation, Tableau, Merge reviews
- Ryan: Arima Model, Python, Merge reviews

##### Segment 2 Challenges:

When creating the machine learning model we had trouble finding correlation between global temperatures and emissions. We found this was due to countries having reduced their own emissions in recent years. We also had trouble creating an arima model with good accuracy output.

#### Segment 3

For this segment we refined our machine learning models, presentation, and visual dashboard.

##### Description of the Data Exploration Phase

- Data Cleaning and Database Creation
    - The datasets we used included one showing amounts of emissions by each country per year, which included totals, per capita and break downs by subcategories such as coal or flaring, a second one showing the population of each country per year, and a third showing the average temperature change of each country per year.
    - In cleaning the data in pandas, some null values were dropped to try to get the most consistent information across all the datasets and columns, which led to some countries being dropped, and all information prior to 1961 was dropped since we would only be using the information starting from that year in our analysis.
    - Some columns were renamed for clarity and to make creating the database easier and some tables were reformatted. In the temperature change and population datasets year rows were shifted to columns to make information more consistent across the datasets.
    - We used a Postgres database to store the datasets, resulting in three tables. To create primary keys, composite keys were created using the ISO codes (the three letter codes unique to each country) and years (for example: USA/1961, USA/1962, etc.). After some experimentation, a keys table was created using all the ISO’s and years that any of the three sheets used, and foreign keys were linked to the keys table, making the database relational.

##### Description of the Analysis Phase

- Tableau Visualizations
    - A tableau dashboard was created to show what the temperature and emissions trends have been over the last 20-60 years. The dynamic chart "Total Emissions By Country" shows which countries are the top emitters by year selection. Since 2006 the order of top emitters are China, USA, Russia, Japan, and Germany. The heat map "Emissions Per Capita" shows which countries have the highest emisions based on population by year selection. This visualization shows us that while China is a higher emitter, the amount per capita is lower than that of the USA and Russia. The multi-line graph "Global Emissions by Year" shows trending emissions over time. Most countries trend upward in emissions, but some have reduced their emissions. Globally, all total emissions continue to increase over time.
    
##### Description of Machine Learning Processing

- Predicting the Future
    - One of our main questions we wanted to answer was whether we can predict future global temperatures using data collected over the last 20-60 years. To perform these predictions, we will use ARIMA modeling, Linear regression modeling, Support Vector Regression modeling, and Random Forest Regression modeling.

##### Results of the ML Models

- ARIMA Modeling
    - The ARIMA (Autoregressive Integration Moving Average) model has the potential to predict future values based on the data it's fed. However, during our analysis it did not perform up the to the standard we needed in order for it to make any accurate predictions. When plotting our diagnostics from the model, the Histogram and Normal Q-Q plots showed good indications that the residuals were normally distributed. The Normal Q-Q plot follows a linear trend with the samples taken, however our ACF (Autocorrelation Plot) shows low to high variance and the values do not decay towards zero which suggest the model is not quite capturing the intended information from the data it was given and is/was not going to accurately predict any future values.

- Linear Regression
  - The Linear Regression model roughly fits the data, though it may be underfitting in some instances. It had the second lowest RMSE on the test set at 0.596 (degrees celsius). The R-Squared values show that while it weakly explains the variance of the temperature change on the training set, it effectively can't explain it on the test set.

- Support Vector Regression
  - The Support Vector Regression model does well in some cases and very poorly in others. It had the best RMSE on the test set at 0.552 (degrees celsius). Once again the R-Squared values show that it weakly explains the variance on the training set, but can't on the test set.

- Random Forest Regression
  - The Random Forest Regression model is somewhat overfitting on the training set and doing poorly on the test set. It appears that it placed too much importance on the year column. It may have needed more precise feature weighting and model tuning to perform better. This model had the worst RMSE on the test set at 0.747 (degrees celsius). The R-Squared values show that this model moderately explained the variance of the temperature change on the training set, but was significantlty less accurate than just predicting the average value on the test set.

- Final Results
  - It appears none of the models were able to make accurate predictions that properly explained the variance in the temperature change. This may have been due to having too many conflicting trends among the countries. We may have also needed more training data for the models to learn. Finally, it's possible that better dataset processing, feature selection, and model tuning would have led to better results.

##### Who worked on what?

- Andrew: Presentation, Tableau, Merge reviews
- Kevin: Machine Learning Model, Python, Merge reviews
- Kimber: README, Presentation, Tableau, Merge reviews
- Ryan: Machine Learning Model, Python, Merge reviews

### Summary 

A basic linear regression model performed the best on our dataset across all countries. That being said, temperature changes fluctuate based on a wide variety of factors that cannot be accurately predicted by emissions or population data alone. Additionally, temperature changes are a global phenomenon. Therefore, the temperature change in any specific country cannot accurately be predicted by its emissions or population data. If global emissions continue to increase, then temperatures in every single country will continue to increase. In conclusion, if we want to stop temperature increases, there must be a global effort to reduce emissions.

### Project Challenges

- Too much data and too little data
- SQL foreign keys 
- ARIMA model - Creating working model
- Temperature change is a global phenomenon and emissions do not follow the same pattern for all countries

### Future Plans

- More machine learning experience may lead to better models
- If we had more time we would explore the data we have for the emissions sources
- If we had more time we would create more tableau visualizations for temperature changes by country

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
