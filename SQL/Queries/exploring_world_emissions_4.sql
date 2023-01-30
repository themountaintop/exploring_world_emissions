-- Create the database --

CREATE TABLE "keys" (
    "country" varchar(60)   NOT NULL,
    "iso" char(3)   NOT NULL,
    "year" int   NOT NULL,
    CONSTRAINT "pk_keys" PRIMARY KEY (
        "iso","year"
     )
);

CREATE TABLE "country_emissions" (
    "country" varchar(60)   NOT NULL,
    "country_code" char(3)   NOT NULL,
    "year" int   NOT NULL,
    "total" float,
    "coal" float,
    "oil" float,
    "gas" float,
    "cement" float,
    "flaring" float,
    "other" float,
    "per_capita" float,
    CONSTRAINT "pk_country_emissions" PRIMARY KEY (
        "country_code","year"
     )
);

CREATE TABLE "temperature_change" (
    "country" varchar(60)   NOT NULL,
    "iso3" char(3)   NOT NULL,
    "year" int   NOT NULL,
    "temp_change" float,
    CONSTRAINT "pk_temperature_change" PRIMARY KEY (
        "iso3","year"
     )
);

CREATE TABLE "world_population" (
    "country_name" varchar(60)   NOT NULL,
    "country_code" char(3)   NOT NULL,
    "year" int   NOT NULL,
    "population" bigint,
    CONSTRAINT "pk_world_population" PRIMARY KEY (
        "country_code","year"
     )
);

ALTER TABLE "country_emissions" ADD CONSTRAINT "fk_country_emissions_country_code_year" FOREIGN KEY("country_code", "year")
REFERENCES "keys" ("iso", "year");

ALTER TABLE "temperature_change" ADD CONSTRAINT "fk_temperature_change_iso3_year" FOREIGN KEY("iso3", "year")
REFERENCES "keys" ("iso", "year");

ALTER TABLE "world_population" ADD CONSTRAINT "fk_world_population_country_code_year" FOREIGN KEY("country_code", "year")
REFERENCES "keys" ("iso", "year");




-- Code to join country_emissions, temperature_change and world_population tables. Uncomment "INTO all_tables" to input results into a new table called all_tables. --

SELECT e.country, e.country_code, e.year, e.total, e.coal, e.oil, e.gas, e.cement, e.flaring,
e.other, p.population, e.per_capita, t.temp_change
/*INTO all_tables*/
FROM country_emissions e
LEFT JOIN temperature_change t
ON e.country_code = t.iso3 AND e.year = t.year
LEFT JOIN world_population p
ON t.iso3 = p.country_code AND t.year = p.year;