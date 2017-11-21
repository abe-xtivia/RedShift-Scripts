--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_advertisers";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_advertisers"
(
	"floodlight_configuration" INTEGER ENCODE raw REFERENCES gaintheory_us_targetusa.targetdfa2_custom_floodlight_configuration(floodlight_configuration),
	"advertiser_id" INTEGER ENCODE raw PRIMARY KEY NOT NULL,
	"advertiser" VARCHAR(6000) ENCODE raw,
	"advertiser_group_id" INTEGER ENCODE raw,
	"advertiser_group" VARCHAR(6000) ENCODE raw
)

DISTSTYLE ALL
;