T kunde.firma, T.maxpreis
FROM (

SELECT kopf.kdnr AS kdnr, SUM( position.menge * position.preis ) AS maxpreis
FROM aufpos AS position
JOIN aufkopf AS kopf
WHERE kopf.aufnr = position.aufnr
GROUP BY kopf.kdnr
) AS T
JOIN kdst AS kunde
WHERE kunde.kdnr = T.kdnr
ORDER BY maxpreis DESC 
LIMIT 0 , 1
