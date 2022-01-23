declare @squares binary(32) = 0xCABDEBAC99999999000000000000000000000000000000001111111142356324


set transaction isolation level read uncommitted


;with gm as
(
	select m.FromFile,m.FromRank,m.ToFile,m.ToRank,f.PositionId,g.Result,count(*) as GameCount
	from Positions p
	inner join moves m on p.PositionId=m.FromPositionId 
	inner join games g on g.GameId=m.GameId
	inner join positions f on f.positionid=m.toPositionId
	where p.squares = @squares
	group by m.FromFile,m.FromRank,m.ToFile,m.ToRank,f.PositionId,g.Result
)

select top 10
	FromFile,FromRank,ToFile,ToRank,
	MAX(CONCAT(pc.SanSymbol,char(97+tofile),ToRank+1)) as [Move],
	sum(GameCount) as GameCount,
	sum(case result when 2 then GameCount else 0.0 end)/sum(GameCount) as White,
	sum(case result when 3 then GameCount else 0.0 end)/sum(GameCount) as Draw,
	sum(case result when 4 then GameCount else 0.0 end)/sum(GameCount) as Black
from gm
inner join Positions p on p.PositionId = gm.PositionId
left join Pieces pc on pc.PieceId = 7 & CONVERT(INT,CONVERT(BINARY(1),'0' + SUBSTRING(convert(char(64),p.squares,2),gm.ToRank*8 +gm.ToFile+1,1),2))
group by FromFile,FromRank,ToFile,ToRank
order by 
	--sum(GameCount) desc
	sum(case result when 2 then GameCount else 0.0 end)/sum(GameCount) +
	0.5*sum(case result when 3 then GameCount else 0.0 end)/sum(GameCount) desc

