SELECT wld.name, wld.population, wld.area
FROM World as wld
WHERE area >= 3000000 OR population >= 25000000;
