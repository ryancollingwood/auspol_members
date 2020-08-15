CREATE DATABASE auspol
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

CREATE TABLE "states" (
  "id" int PRIMARY KEY,
  "state" varchar
);

CREATE TABLE "parties" (
  "id" int PRIMARY KEY,
  "party" varchar
);

CREATE TABLE "postcodes" (
  "id" int PRIMARY KEY,
  "postcode" varchar
);

CREATE TABLE "electorates" (
  "id" int PRIMARY KEY,
  "electorate" varchar
);

CREATE TABLE "locality_suburbs" (
  "id" int PRIMARY KEY,
  "locality_suburb" varchar
);

CREATE TABLE "representitives" (
  "id" int PRIMARY KEY,
  "name_first" varchar,
  "name_last" varchar,
  "electorate_id" int,
  "party_id" int
);

CREATE TABLE "localities" (
  "electorate_id" int,
  "locality_suburb_id" int,
  "postcode_id" int,
  "state_id" int
);

ALTER TABLE "representitives" ADD FOREIGN KEY ("electorate_id") REFERENCES "electorates" ("id");

ALTER TABLE "representitives" ADD FOREIGN KEY ("party_id") REFERENCES "parties" ("id");

ALTER TABLE "localities" ADD FOREIGN KEY ("electorate_id") REFERENCES "electorates" ("id");

ALTER TABLE "localities" ADD FOREIGN KEY ("locality_suburb_id") REFERENCES "locality_suburbs" ("id");

ALTER TABLE "localities" ADD FOREIGN KEY ("postcode_id") REFERENCES "postcodes" ("id");

ALTER TABLE "localities" ADD FOREIGN KEY ("state_id") REFERENCES "states" ("id");

CREATE UNIQUE INDEX ON "states" ("state");

CREATE UNIQUE INDEX ON "parties" ("party");

CREATE UNIQUE INDEX ON "postcodes" ("postcode");

CREATE UNIQUE INDEX ON "electorates" ("electorate");

CREATE UNIQUE INDEX ON "locality_suburbs" ("locality_suburb");
