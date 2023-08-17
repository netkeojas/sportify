--
-- Class DaysOfWeek as table days_of_week
--

CREATE TABLE "days_of_week" (
  "id" serial,
  "name" text NOT NULL,
  "code" text NOT NULL
);

ALTER TABLE ONLY "days_of_week"
  ADD CONSTRAINT days_of_week_pkey PRIMARY KEY (id);


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
  "city" text NOT NULL,
  "aboutVenue" text NOT NULL,
  "gstNumber" text NOT NULL,
  "socialMediaIds" json NOT NULL,
  "contactPerson" text NOT NULL,
  "contactNumber" text NOT NULL,
  "imageUrl" json NOT NULL,
  "aminities" json NOT NULL,
  "openingTime" integer NOT NULL,
  "closingTime" integer NOT NULL
);

ALTER TABLE ONLY "sport_venue"
  ADD CONSTRAINT sport_venue_pkey PRIMARY KEY (id);


--
-- Class SportVenueBooking as table sport_venue_booking
--

CREATE TABLE "sport_venue_booking" (
  "id" serial,
  "playerId" integer NOT NULL,
  "venueSportHasAreaId" integer NOT NULL,
  "dateOfBooking" timestamp without time zone NOT NULL,
  "dayOfWeekId" integer NOT NULL,
  "startTimeOfBooking" integer NOT NULL,
  "totalAmount" double precision NOT NULL,
  "amountPaid" double precision NOT NULL,
  "bookingStatus" text NOT NULL,
  "bookingTimeStamp" timestamp without time zone NOT NULL,
  "numberOfHours" integer NOT NULL
);

ALTER TABLE ONLY "sport_venue_booking"
  ADD CONSTRAINT sport_venue_booking_pkey PRIMARY KEY (id);


--
-- Class SportVenueFacilityDetail as table sport_venue_facility_detail
--

CREATE TABLE "sport_venue_facility_detail" (
  "id" serial,
  "venueHasSportAreaId" integer NOT NULL,
  "fromDay" integer NOT NULL,
  "toDay" integer NOT NULL,
  "fromTime" integer NOT NULL,
  "toTime" integer NOT NULL,
  "pricePerHour" double precision NOT NULL,
  "pricePerPerson" double precision NOT NULL
);

ALTER TABLE ONLY "sport_venue_facility_detail"
  ADD CONSTRAINT sport_venue_facility_detail_pkey PRIMARY KEY (id);


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
-- Class TimeSlotsOfDay as table time_slots_of_day
--

CREATE TABLE "time_slots_of_day" (
  "id" serial,
  "code" text NOT NULL,
  "fromTime" text NOT NULL,
  "toTime" text NOT NULL
);

ALTER TABLE ONLY "time_slots_of_day"
  ADD CONSTRAINT time_slots_of_day_pkey PRIMARY KEY (id);


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


