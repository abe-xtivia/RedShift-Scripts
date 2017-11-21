--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_activity";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_activity"
(
	"event_time" BIGINT NOT NULL  ENCODE zstd,
	"user_id" VARCHAR(50) NOT NULL  ENCODE zstd,
	"advertiser_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_advertisers(advertiser_id),
	"campaign_id" INTEGER   ENCODE lzo REFERENCES gaintheory_us_targetusa.targetdfa2_campaigns(campaign_id),
	"ad_id" INTEGER   ENCODE lzo REFERENCES gaintheory_us_targetusa.targetdfa2_ads(ad_id),
	"rendering_id" INTEGER   ENCODE lzo REFERENCES gaintheory_us_targetusa.targetdfa2_creatives(rendering_id),
	"creative_version" INTEGER   ENCODE lzo,
	"site_id_dcm" INTEGER   ENCODE lzo REFERENCES gaintheory_us_targetusa.targetdfa2_sites(site_id_dcm),
	"placement_id" INTEGER   ENCODE lzo REFERENCES  gaintheory_us_targetusa.targetdfa2_placements(placement_id),
	"country_code" CHAR(2)   ENCODE zstd,
	"state_region" CHAR(2)   ENCODE zstd,
	"browser_platform_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_browsers(browser_platform_id),
	"browser_platform_version" DOUBLE PRECISION   ENCODE zstd,
	"operating_system_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_operating_systems(operating_system_id),
	"u_value" VARCHAR(512)   ENCODE zstd,
	"activity_id" INTEGER   ENCODE zstd PRIMARY KEY NOT NULL,
	"tran_value" VARCHAR(10)   ENCODE zstd,
	"other_data" VARCHAR(12000)   ENCODE zstd,
	"ord_value" VARCHAR(255)   ENCODE zstd,
	"interaction_time" BIGINT   ENCODE lzo,
	"conversion_id" INTEGER   ENCODE zstd,
	"segment_value_1" BIGINT   ENCODE lzo,
	"floodlight_configuration" INTEGER   ENCODE zstd,
	"partner1_id" VARCHAR(255)   ENCODE zstd,
	"partner2_id" VARCHAR(255)   ENCODE zstd,
	"total_conversions" INTEGER   ENCODE zstd,
	"total_revenue" NUMERIC(37,15)   ENCODE zstd,
	"md_user_id_numeric" BIGINT NOT NULL ENCODE raw,
	"md_user_id_0" BOOLEAN NOT NULL ENCODE raw,
	"md_event_time" TIMESTAMP WITHOUT TIME ZONE NOT NULL  ENCODE zstd,
	"md_file_date" INTEGER NOT NULL  ENCODE zstd
)

distkey(md_user_id_numeric)
SORTKEY(md_event_time)
;