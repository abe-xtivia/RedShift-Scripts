--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_sites";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_sites"
(
	"site_id_dcm" INTEGER ENCODE raw PRIMARY KEY NOT NULL,
	"site_dcm" VARCHAR(6000) ENCODE raw,
	"site_id_site_directory" INTEGER ENCODE raw,
	"site_site_directory" VARCHAR(6000) ENCODE raw
)

DISTSTYLE ALL
;