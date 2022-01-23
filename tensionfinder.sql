set transaction isolation level read uncommitted

;with sq as 
(
	select PositionId,white,sum(captures) as captures
	from squares with (forceseek)
	where Captures > 0
	group by PositionId,white
),
cap as 
(
	select PositionId,sum(captures) as tension
	from sq
	group by PositionId
	having count(*) > 1
)
select positionid,tension
from cap