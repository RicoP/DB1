select * 
from kdst
JOIN vert 
ON vert.vertnr = kdst.vertreter 
JOIN aufkopf 
ON aufkopf.kdnr = kdst.kdnr
where s_status = 2
