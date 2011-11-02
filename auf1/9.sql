--Wir wollen die Kundengruppen vom Vertrter Paul wissen. Hierzu müssen wir vert mit kdst joinen und kdst wiederum mit kdgru. Dann müssen wir im Where den Namen filtern und nach GRUP_TXT gruppieren. 
SELECT GRUP_TXT AS PaulsBranchen
FROM vert 
JOIN kdst 
ON vert.vertnr = kdst.vertreter 
JOIN kdbra 
ON kdst.BRANCHE = kdbra.BRANCHE 
WHERE vorname = 'Paul' 
GROUP BY GRUP_TXT 
