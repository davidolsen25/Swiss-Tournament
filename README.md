# Fullstack-Project-2
Project 2 submission for Udacity Fullstack Nanodegree by David Olsen

Swiss Tournament 

This program and database are meant to be used to run a swiss-style tournament. In a swiss tournament,
all players play all rounds of play. The standings keep track of the players wins and losses.
there are two tables in the database which are written in PostgreSQL ( tournament.sql ). One table is keeping track
of the players and their wins and losses. While another table is keeping track of the matches and the winner and loser of 
each match. The program is a Python file: ( tournament.py ). The program  and databse has the ability to delete 
matches, delete players, count players, register players, keep records of the standings of players, and to pair 
players with other players who have the same amount of wins.

The connection to the database is included in tournament.sql.

You need only to import the database with the command: \i tournament.sql

With this program and database you can use the following function calls:

1. deleteMatches() : deletes previous matches from database.
2. deletePlayers() : deletes previous players from database.
3. countPlayers() : returns the count of registered players.
4. registerPlayer(name) : registers a player in the tournament.
5. playerStandings() : returns a list of players id numbers, names, wins and matches
   sorted by most wins.
6. reportMatch(winner, loser) ; reports the results of a match by entering the id numbers
   of the winner and loser of the match.
7. swissPairings() : returns a list of tuples with the pairings for the next round of 
   matches sorted.
