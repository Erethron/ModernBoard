set transaction isolation level read uncommitted

;with gm as
(
	select 
		fen,
		g.Result,
		count(*) as GameCount
	from Positions p
	inner join moves m on p.PositionId=m.ToPositionId 
	inner join games g on g.GameId=m.GameId
	group by p.fen,g.Result
)

select top 100
	fen,
	sum(GameCount) as GameCount,
	sum(case result when 2 then GameCount else 0.0 end)/sum(GameCount) as White,
	sum(case result when 3 then GameCount else 0.0 end)/sum(GameCount) as Draw,
	sum(case result when 4 then GameCount else 0.0 end)/sum(GameCount) as Black
from gm
group by fen
order by sum(GameCount) desc
