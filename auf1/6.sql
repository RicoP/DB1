SELECT p.partname, s.city AS HERSTELLER_TEIL, p.city AS FIRMENSITZ_TEIL  
FROM sp
JOIN s
ON sp.suppno = s.suppno 
JOIN p
ON p.partno = sp.partno  
WHERE p.city = s.city 
GROUP BY p.partname, s.city, p.city 
