--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_custom_rich_media";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_custom_rich_media"
(
	"advertiser_id" INTEGER ENCODE raw REFERENCES gaintheory_us_targetusa.targetdfa2_advertisers(advertiser_id),
	"rich_media_event_id" INTEGER ENCODE raw,
	"rich_media_event" VARCHAR(6000)   ENCODE zstd,
	"rich_media_event_type_id" INTEGER ENCODE raw REFERENCES gaintheory_us_targetusa.targetdfa2_rich_media_standard_event_types(id),
	"rich_media_event_type" VARCHAR(6000) ENCODE raw
)

DISTSTYLE ALL
;