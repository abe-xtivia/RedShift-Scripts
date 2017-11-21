--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_ads";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_ads"
(
	"advertiser_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_advertisers(advertiser_id),
	"campaign_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_campaigns(campaign_id),
	"ad_id" INTEGER   ENCODE delta32k PRIMARY KEY NOT NULL,
	"ad" VARCHAR(6000)   ENCODE zstd,
	"ad_click_url" VARCHAR(6000)   ENCODE zstd,
	"ad_type" VARCHAR(6000)   ENCODE zstd,
	"creative_pixel_size" VARCHAR(6000)   ENCODE zstd,
	"ad_comments" VARCHAR(6000)   ENCODE zstd
)

DISTSTYLE ALL
;