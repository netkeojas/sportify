--
-- Class SportCategory as table sport_category
--

CREATE TABLE "sport_category" (
  "id" serial,
  "name" text NOT NULL,
  "isTeamSport" boolean NOT NULL,
  "popularity" integer NOT NULL
);

ALTER TABLE ONLY "sport_category"
  ADD CONSTRAINT sport_category_pkey PRIMARY KEY (id);


