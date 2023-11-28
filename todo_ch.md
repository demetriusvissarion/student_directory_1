## Challenge

You should create a new database `movies_directory` for this exercise.

Infer the table schema from these user stories.
```
As a person who loves movies,
So I can list all my favourite movies
I want to see a list of movies' titles.

As a person who loves movies,
So I can list all my favourite movies
I want to see a list of movies' genres.

As a person who loves movies,
So I can list all my favourite movies
I want to see a list of movies' release years.
```

1. Copy the Design Recipe template and use it to design the schema for that
   table.
2. Create the table by loading the SQL table file in `psql`.
3. To verify your work, make sure to run an `INSERT` query to insert a new movie
   record, and then a `SELECT` query to list the records.




# Single Table Design Recipe Template

_Copy this recipe template to design and create a database table from a specification._

## 1. Extract nouns from the user stories or specification

```
# USER STORY:

As a person who loves movies,
So I can list all my favourite movies
I want to see a list of movies' titles.

As a person who loves movies,
So I can list all my favourite movies
I want to see a list of movies' genres.

As a person who loves movies,
So I can list all my favourite movies
I want to see a list of movies' release years.
```

```
Nouns:

movies, title, genre, release_year

Verbs:
see_titles, see_genres, see_release_years
```

## 2. Infer the Table Name and Columns

Put the different nouns in this table. Replace the example with your own nouns.

| Record                | Properties                      |
| --------------------- | ------------------------------- |
| movies                | title, genre, release_year      |

Name of the table (always plural): `movies`

Column names: `title`, `genre`, `release_year`

## 3. Decide the column types

[Here's a full documentation of PostgreSQL data types](https://www.postgresql.org/docs/current/datatype.html).

Most of the time, you'll need either `text`, `int`, `bigint`, `numeric`, or `boolean`. If you're in doubt, do some research or ask your peers.

Remember to **always** have the primary key `id` as a first column. Its type will always be `SERIAL`.

```
# EXAMPLE:

id: SERIAL
title: text
genre: text
release_year: int
```

## 4. Write the SQL

```sql
-- EXAMPLE
-- file: movies.sql

-- Replace the table name, columm names and types.

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title text,
  genre text,
  release_year INTEGER
);
```

## 5. Create the table

```bash
psql -h 127.0.0.1 movies_directory < seeds/movies.sql
psql -h 127.0.0.1 -d movies_directory
INSERT INTO movies (title, genre, release_year) VALUES ('The Matrix Reloaded', 'Sci-fi', 2003);
SELECT * from movies;
\q
```

or Tabel Plus


