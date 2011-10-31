SELECT kunde.firma, T.maxpreis FROM (SELECT kopf.kdnr as kdnr, SUM(position.menge * position.preis) AS maxpreis
from aufpos AS position 
JOIN aufkopf as kopf 
WHERE  
kopf.aufnr = position.aufnr 
group  by kopf.kdnr) AS T  
JOIN kdst AS kunde 
where kunde.kdnr = T.kdnr
ORDER BY maxpreis  DESC 
