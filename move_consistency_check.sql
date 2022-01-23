with mv as 
(
	select top 1000 *,
		LAG(ToPositionId) OVER(PARTITION BY gameid order by plynumber) as prev_topos,
		LAG(PlyNumber,1,0) OVER(PARTITION BY gameid order by plynumber) as prev_plynum
	from moves
)
select * from mv
where 
	prev_plynum<>PlyNumber-1 
	or prev_topos<>frompositionid 
order by gameid,PlyNumber