SELECT j.jobname, count(*) FROM `spj` 
JOIN p
ON p.partno = spj.partno 
JOIN j 
ON j.jobno = spj.jobno
GROUP BY j.jobname
ORDER BY j.jobname 
