select * from Positions

select 
	id,
	char([from]%8 + 97)+cast([from]/8 + 1 as varchar)+
	char([to]%8 + 97)+cast([to]/8 + 1 as varchar) as mv
from responses

select * from PosQueue order by pos


