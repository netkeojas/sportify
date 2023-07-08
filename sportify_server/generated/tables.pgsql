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


--
-- Class SportVenue as table sport_venue
--

CREATE TABLE "sport_venue" (
  "id" serial,
  "name" text NOT NULL,
  "address" text NOT NULL,
  "locationUrl" text NOT NULL,
  "openTiming" text NOT NULL,
  "aboutVenue" text NOT NULL,
  "gstNumber" text NOT NULL,
  "socialMediaIds" json NOT NULL,
  "contactPerson" text NOT NULL,
  "contactNumber" text NOT NULL,
  "imageUrl" json NOT NULL,
  "aminities" json NOT NULL
);

ALTER TABLE ONLY "sport_venue"
  ADD CONSTRAINT sport_venue_pkey PRIMARY KEY (id);


