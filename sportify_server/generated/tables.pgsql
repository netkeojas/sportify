--
-- Class Player as table player
--

CREATE TABLE "player" (
  "id" serial,
  "name" text NOT NULL,
  "emailId" text NOT NULL,
  "contactNumber" text NOT NULL,
  "city" text NOT NULL,
  "gender" text NOT NULL,
  "dateOfBirth" timestamp without time zone NOT NULL,
  "role" text NOT NULL
);

ALTER TABLE ONLY "player"
  ADD CONSTRAINT player_pkey PRIMARY KEY (id);


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


--
-- Class SportVenueHasSportCategory as table sport_venue_has_sport_category
--

CREATE TABLE "sport_venue_has_sport_category" (
  "id" serial,
  "sportVenueId" integer NOT NULL,
  "sportCategoryId" integer NOT NULL
);

ALTER TABLE ONLY "sport_venue_has_sport_category"
  ADD CONSTRAINT sport_venue_has_sport_category_pkey PRIMARY KEY (id);


--
-- Class VenueSportHasArea as table venue_sport_has_area
--

CREATE TABLE "venue_sport_has_area" (
  "id" serial,
  "sportVenueHasSportCategoryId" integer NOT NULL,
  "name" text NOT NULL
);

ALTER TABLE ONLY "venue_sport_has_area"
  ADD CONSTRAINT venue_sport_has_area_pkey PRIMARY KEY (id);


