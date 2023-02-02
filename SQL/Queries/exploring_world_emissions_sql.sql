-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Country_Emissions" (
    "Country" varchar(60)   NOT NULL,
    "Country_Code" char(3)   NOT NULL,
    "Year" int   NOT NULL,
    "Total" float   NOT NULL,
    "Coal" float   NOT NULL,
    "Oil" float   NOT NULL,
    "Gas" float   NOT NULL,
    "Cement" float   NOT NULL,
    "Flaring" float   NOT NULL,
    "Other" float   NOT NULL,
    "PerCapita" float   NOT NULL,
    CONSTRAINT "pk_Country_Emissions" PRIMARY KEY (
        "Country_Code","Year"
     )
);

CREATE TABLE "World_Population" (
    "Country_Name" varchar(60)   NOT NULL,
    "Country_Code" char(3)   NOT NULL,
    "Year" int   NOT NULL,
    "Population" bigint   NOT NULL,
    CONSTRAINT "pk_World_Population" PRIMARY KEY (
        "Country_Code","Year"
     )
);

CREATE TABLE "Temperature_Change" (
    "Country" varchar(60)   NOT NULL,
    "ISO3" char(3)   NOT NULL,
    "Year" int   NOT NULL,
    "Temp_Change" float   NOT NULL,
    CONSTRAINT "pk_Temperature_Change" PRIMARY KEY (
        "ISO3","Year"
     )
);

ALTER TABLE "Country_Emissions" ADD CONSTRAINT "fk_Country_Emissions_Country_Code_Year" FOREIGN KEY("Country_Code", "Year")
REFERENCES "Temperature_Change" ("ISO3", "Year");

ALTER TABLE "World_Population" ADD CONSTRAINT "fk_World_Population_Country_Code_Year" FOREIGN KEY("Country_Code", "Year")
REFERENCES "World_Population" ("Country_Code", "Year");

ALTER TABLE "Temperature_Change" ADD CONSTRAINT "fk_Temperature_Change_ISO3_Year" FOREIGN KEY("ISO3", "Year")
REFERENCES "World_Population" ("Country_Code", "Year");

