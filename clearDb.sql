delete from Squares
delete from moves
delete from Positions
delete from games
go

dbcc checkident(positions, reseed, 0)
dbcc checkident(games, reseed, 0)

