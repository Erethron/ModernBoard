set transaction isolation level read uncommitted

;
with dat as
(
	select 
		(select row_count
		from sys.dm_db_partition_stats s
		inner join sys.tables t on s.object_id=t.object_id
		where index_id < 2 and t.name='Games') as games,
		(select row_count
		from sys.dm_db_partition_stats s
		inner join sys.tables t on s.object_id=t.object_id
		where index_id < 2 and t.name='Moves') as moves,
		(select row_count
		from sys.dm_db_partition_stats s
		inner join sys.tables t on s.object_id=t.object_id
		where index_id < 2 and t.name='Positions') as positions
)

select positions / games as Pos, Moves / Games as Moves
from dat
