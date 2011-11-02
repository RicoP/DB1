update s 
set city = 'Berlin' 
where suppno = 'S2' 

-------
update p, sp  
set p.city = 'Berlin' 
WHERE p.partno = sp.partno 
AND sp.suppno = 'S2' 

