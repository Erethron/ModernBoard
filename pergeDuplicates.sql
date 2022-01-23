set transaction isolation level read uncommitted

delete from games where gameid in 
(
	select max(gameid)
	from games
	group by whitename, blackname,date
	having count(*) > 1
)
