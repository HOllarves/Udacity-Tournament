-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE DATABASE IF NOT EXISTS  tournament;

CREATE TABLE IF NOT EXISTS players (
    player_id SERIAL,
    name VARCHAR(50),
    CONSTRAINT player_id_pk PRIMARY KEY (player_id));

CREATE TABLE IF NOT EXISTS scores (
    score_id SERIAL,
    win_id INTEGER REFERENCES players(player_id),
    lost_id INTEGER REFERENCES players(player_id)
    );