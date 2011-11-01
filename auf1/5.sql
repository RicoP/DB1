SELECT count(*) AS EINZELTEILANzAHL, T.jobname FROM ( 
SELECT j.jobno , j.jobname 
FROM j 
LEFT JOIN (SELECT j.jobno AS NOJOJOBNO 
FROM j
JOIN SPJ 
ON spj.jobno = j.jobno
JOIN p
ON spj.partno = p.partno
where p.color = 'red' 
GROUP BY j.jobno) AS NOJO
ON j.jobno = NOJO.NOJOJOBNO 
WHERE NOJO.NOJOJOBNO is NULL ) AS T 
JOIN spj
ON spj.jobno = T.jobno 
GROuP BY T.jobname
