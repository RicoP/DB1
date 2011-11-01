select j.jobname AS ENDPRODUKT, p.partname , SUM(p.weight) AS GEWICHT, SUM(spj.quantity) AS ANZAHL 
from j 
JOIN spj
ON spj.jobno = j.jobno
JOIN p 
ON p.partno = spj.PARTNO 
GROUP BY j.jobname, p.partname
ORDER BY j.jobname 
