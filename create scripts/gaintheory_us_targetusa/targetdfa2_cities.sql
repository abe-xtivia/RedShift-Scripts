--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_cities";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_cities"
(
	"city_id" INTEGER   ENCODE raw
	,"city" VARCHAR(6000)   ENCODE zstd
)
primary key(city_id)
DISTSTYLE EVEN
;