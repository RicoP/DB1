SELECT concat(v.name , ', ' , v.vorname) AS Vertreter , k.firma AS 'Kunde des Vertreter'
FROM  `kdst` AS k
JOIN  `vert` AS v
WHERE k.vertreter = v.vertnr
 AND LENGTH(v.vorname) = (select MIN(LENGTH(v.vorname)) from 
 `vert` AS v )

