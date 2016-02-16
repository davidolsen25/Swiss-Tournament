-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

drop table players cascade;

drop table matches cascade;

drop database tournament;

create database tournament;

create table players (
	id serial primary key,
	name text,
	wins integer default 0,
	losses integer default 0,
	matches integer default 0
);

create table matches (
	matchNumber serial primary key,
	playerA integer references players(id),
	playerB integer references players(id),
	winner integer references players(id),
	loser integer references players(id)
);