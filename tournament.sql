-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE DATABASE IF NOT EXISTS  tournament;

\c tournament

CREATE TABLE players (
    player_id SERIAL PRIMARY,
    name VARCHAR(50),
    CONSTRAINT player_id_pk PRIMARY KEY (player_id));

CREATE TABLE scores (
    score_id SERIAL PRIMARY,
    win_id INTEGER REFERENCES players(player_id),
    lost_id INTEGER REFERENCES players(player_id)
    );