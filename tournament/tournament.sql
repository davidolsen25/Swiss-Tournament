-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

drop database tournament;

create database tournament;

\c tournament;

create table players (
	id serial primary key,
	name text
);

create table matches (
	matchNumber serial primary key,
	winner integer references players(id),
	loser integer references players(id)
);

CREATE VIEW view_standings AS 
(
   	SELECT id, name,
	(SELECT count(winner) as win
    FROM matches 
    WHERE id = winner) AS wins,
    (SELECT count(*) as matches_play
    FROM matches 
    WHERE id
    IN (winner, loser)) AS matches_played
    FROM players GROUP BY id
    ORDER BY wins DESC
);
