--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_operating_systems";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_operating_systems"
(
	"operating_system_id" INTEGER ENCODE raw PRIMARY KEY NOT NULL,
	"operating_system" VARCHAR(6000) ENCODE raw
)

DISTSTYLE ALL
;