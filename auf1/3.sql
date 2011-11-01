

SELECT artst.artbez, aufpos.aufnr 
FROM artst 
JOIN aufpos 
ON artst.artnr = aufpos.artnr 
JOIN aufkopf
ON aufkopf.aufnr = aufpos.aufnr 
ORDER by aufnr 
