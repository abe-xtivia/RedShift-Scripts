--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_operating_systems";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_operating_systems"
(
	"operating_system_id" INTEGER ENCODE raw
	,"operating_system" VARCHAR(6000) ENCODE raw
)
DISTSTYLE EVEN
;