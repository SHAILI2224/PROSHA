BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "guest" (
	"name"	TEXT,
	"password"	TEXT,
	PRIMARY KEY("name")
);
CREATE TABLE IF NOT EXISTS "userre" (
	"name"	TEXT,
	"city"	TEXT,
	"password"	TEXT,
	"mobile"	TEXT,
	"age"	INTEGER,
	PRIMARY KEY("name")
);
CREATE TABLE IF NOT EXISTS "userlog" (
	"name"	TEXT,
	"password"	TEXT
);
CREATE TABLE IF NOT EXISTS "scores" (
	"id"	INTEGER,
	"uname"	TEXT,
	"score"	INTEGER,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("uname") REFERENCES "userre"("name")
);
CREATE TABLE IF NOT EXISTS "guest_score" (
	"id"	Integer,
	"NAME"	text,
	"score"	integer,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("NAME") REFERENCES "guest"("name")
);
CREATE TABLE IF NOT EXISTS "admin" (
	"name"	TEXT,
	"password"	TEXT
);
INSERT INTO "guest" VALUES ('asas','asas1212');
INSERT INTO "guest" VALUES ('q','asasasas');
INSERT INTO "guest" VALUES ('qw','qwqw121212');
INSERT INTO "guest" VALUES ('www','wwwwwwww');
INSERT INTO "guest" VALUES ('er','erererer');
INSERT INTO "guest" VALUES ('jhanvi','12121212');
INSERT INTO "guest" VALUES ('abcd','12ab12ab');
INSERT INTO "guest" VALUES ('abab','12ab12ab');
INSERT INTO "userre" VALUES ('nuer','botad','12345678','1121212112',11);
INSERT INTO "userre" VALUES ('abcd','bia','12121212','1111111111',11);
INSERT INTO "userre" VALUES ('ab','ab','12121212','1234567890',11);
INSERT INTO "userre" VALUES ('Ram','ayodhya','Ramsiya1','1212121212',11);
INSERT INTO "userre" VALUES ('asas','asa','aaaaaaaa','1212121212',11);
INSERT INTO "userre" VALUES ('kk',' botad','kkkkkkkk','9898989898',32);
INSERT INTO "scores" VALUES (1,'Name: nuer',5);
INSERT INTO "scores" VALUES (2,'Name: abcd',5);
INSERT INTO "guest_score" VALUES (1,'Name: qwe',10);
INSERT INTO "guest_score" VALUES (2,'Name: er',5);
INSERT INTO "guest_score" VALUES (3,'Name: abab',5);
INSERT INTO "admin" VALUES ('admin','123');
COMMIT;
