BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Badges" (
	"bid"	INTEGER,
	"badgename"	TEXT,
	"description"	TEXT,
	PRIMARY KEY("bid" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Cities" (
	"cid"	INTEGER,
	"name"	TEXT,
	"latitude"	REAL,
	"longitude"	REAL,
	PRIMARY KEY("cid" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Rewards" (
	"id"	INTEGER,
	"name"	TEXT,
	"pointsrequired"	INTEGER,
	"description"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Travel" (
	"travel_id"	INTEGER,
	"User_Id"	INTEGER,
	"date"	TEXT,
	"startcity"	TEXT,
	"endcity"	TEXT,
	"distance"	REAL,
	"traveltype"	TEXT,
	"pointsearned"	REAL,
	"co2saved"	INTEGER,
	"traveltime"	TEXT,
	PRIMARY KEY("travel_id" AUTOINCREMENT),
	FOREIGN KEY("User_Id") REFERENCES "Users_Table"("User_Id")
);
CREATE TABLE IF NOT EXISTS "UserBadges" (
	"ubid"	INTEGER,
	"User_Id"	INTEGER,
	"bid"	INTEGER,
	"dateEarned"	TEXT,
	PRIMARY KEY("ubid" AUTOINCREMENT),
	FOREIGN KEY("User_Id") REFERENCES "",
	FOREIGN KEY("bid") REFERENCES ""
);
CREATE TABLE IF NOT EXISTS "UserRewards " (
	"urid"	INTEGER,
	"User_Id"	INTEGER,
	"id"	INTEGER,
	"dateClaimed"	TEXT,
	PRIMARY KEY("urid" AUTOINCREMENT),
	FOREIGN KEY("User_Id") REFERENCES "Users_Table"("User_Id"),
	FOREIGN KEY("id") REFERENCES ""
);
CREATE TABLE IF NOT EXISTS "Users_Table" (
	"User_Id"	INTEGER,
	"Name"	TEXT NOT NULL,
	"UserName"	TEXT NOT NULL UNIQUE,
	"Password"	NUMERIC NOT NULL UNIQUE,
	"CityName"	TEXT,
	"Points"	INTEGER,
	"co2saved"	INTEGER,
	"streak"	INTEGER,
	"isNewUser"	INTEGER,
	"lastTravelDate"	TEXT DEFAULT NULL,
	"DailyTrips"	INTEGER DEFAULT NULL,
	"WeeklyDistance"	INTEGER DEFAULT NULL,
	"Badges"	TEXT DEFAULT NULL,
	PRIMARY KEY("User_Id" AUTOINCREMENT)
);
COMMIT;
