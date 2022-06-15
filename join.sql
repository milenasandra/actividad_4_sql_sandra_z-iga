SELECT *
FROM cities_countries_continents, cities,
countries, continents 
WHERE cities.id = cities_countries_continents.cities_id
AND continents.id = cities_countries_continents.continent_id 
AND countries.id = cities_countries_continents.countries_id

