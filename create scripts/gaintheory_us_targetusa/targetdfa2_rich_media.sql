--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_rich_media";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_rich_media"
(
	"event_time" BIGINT NOT NULL  ENCODE zstd,
	"user_id" VARCHAR(50) NOT NULL  ENCODE zstd,
	"advertiser_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_advertisers(advertiser_id),
	"campaign_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_campaigns(campaign_id),
	"ad_id" INTEGER   ENCODE bytedict REFERENCES gaintheory_us_targetusa.targetdfa2_ads(ad_id),
	"rendering_id" INTEGER   ENCODE bytedict REFERENCES gaintheory_us_targetusa.targetdfa2_creatives(rendering_id),
	"creative_version" INTEGER   ENCODE zstd,
	"site_id_dcm" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_sites(site_id_dcm),
	"placement_id" INTEGER   ENCODE bytedict REFERENCES gaintheory_us_targetusa.targetdfa2_placements(placement_id),
	"country_code" CHAR(2)   ENCODE zstd,
	"state_region" CHAR(2)   ENCODE zstd,
	"browser_platform_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_browsers(browser_platform_id),
	"browser_platform_version" DOUBLE PRECISION   ENCODE zstd,
	"operating_system_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_operating_systems(operating_system_id),
	"rich_media_event_id" INTEGER   ENCODE zstd,
	"rich_media_event_type_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_rich_media_standard_event_types(id),
	"partner1_id" VARCHAR(255)   ENCODE zstd,
	"partner2_id" VARCHAR(255)   ENCODE zstd,
	"event_timers" DOUBLE PRECISION   ENCODE zstd,
	"event_counters" INTEGER   ENCODE zstd,
	"md_user_id_numeric" BIGINT NOT NULL ENCODE raw,
	"md_user_id_0" BOOLEAN NOT NULL ENCODE raw,
	"md_event_time" TIMESTAMP WITHOUT TIME ZONE NOT NULL  ENCODE zstd,
	"md_file_date" INTEGER NOT NULL  ENCODE zstd
)

distkey(md_user_id_numeric)
SORTKEY(md_event_time)
;