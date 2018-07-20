DROP DATABASE IF EXISTS maps_info;

CREATE DATABASE maps_info;

USE maps_info;

CREATE TABLE business (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE map (
  id int NOT NULL AUTO_INCREMENT,
  address varchar(100) NOT NULL,
  relative_location varchar(100) NOT NULL,
  phone_number int NOT NULL,
  business_id int NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE more_business_info (
  id int NOT NULL AUTO_INCREMENT,
  take_reservations boolean NOT NULL,
  delivery boolean NOT NULL,
  take_out boolean NOT NULL,
  accepts_credit_cards boolean NOT NULL,
  accepts_google_pay boolean NOT NULL,
  good_for varchar(100) NOT NULL,
  parking varchar(100) NOT NULL,
  bike_parking boolean NOT NULL,
  wheelchair_accessible boolean NOT NULL,
  good_for_kids boolean NOT NULL,
  good_for_groups boolean NOT NULL,
  attire varchar(100) NOT NULL,
  noise_level varchar(100) NOT NULL,
  alcohol varchar(100) NOT NULL,
  outdoor_seating varchar(100) NOT NULL,
  wi_fi boolean NOT NULL,
  has_tv boolean NOT NULL,
  waiter_service boolean NOT NULL,
  caters boolean NOT NULL,
  gender_neutral_restrooms boolean NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE business_info (
  id int NOT NULL AUTO_INCREMENT,
  mon time NOT NULL,
  tue time NOT NULL,
  wed time NOT NULL,
  thu time NOT NULL,
  fri time NOT NULL,
  sat time NOT NULL,
  sun time NOT NULL,
  PRIMARY KEY (id)
);
