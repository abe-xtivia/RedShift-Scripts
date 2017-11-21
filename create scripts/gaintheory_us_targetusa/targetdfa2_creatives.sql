--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_creatives";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_creatives"
(
	"advertiser_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_advertisers(advertiser_id),
	"rendering_id" INTEGER   ENCODE zstd PRIMARY KEY NOT NULL,
	"creative_id" INTEGER   ENCODE zstd,
	"creative" VARCHAR(6000)   ENCODE zstd,
	"creative_last_modified_date" BIGINT   ENCODE zstd,
	"creative_type" VARCHAR(6000)   ENCODE zstd,
	"creative_pixel_size" VARCHAR(6000)   ENCODE zstd,
	"creative_image_url" VARCHAR(6000)   ENCODE zstd,
	"creative_version" INTEGER   ENCODE zstd
)

DISTSTYLE ALL
;