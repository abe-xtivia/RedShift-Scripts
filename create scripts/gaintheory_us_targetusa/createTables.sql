--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_custom_floodlight_variables";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_custom_floodlight_variables"
(
	"floodlight_configuration" INTEGER ENCODE raw PRIMARY KEY NOT NULL,
	"floodlight_variable_id" VARCHAR(6000) ENCODE raw,
	"floodlight_variable_name" VARCHAR(6000) ENCODE raw
)

DISTSTYLE ALL
;

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_states";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_states"
(
	"state_region" VARCHAR(6000) ENCODE raw,
	"state_region_full_name" VARCHAR(6000) ENCODE raw
)

DISTSTYLE ALL
;

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

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_rich_media_standard_event_types";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_rich_media_standard_event_types"
(
	"id" INTEGER NOT NULL ENCODE raw PRIMARY KEY NOT NULL,
	"name" VARCHAR(765) NOT NULL ENCODE raw
)

DISTSTYLE ALL
;

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_operating_systems";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_operating_systems"
(
	"operating_system_id" INTEGER ENCODE raw PRIMARY KEY NOT NULL,
	"operating_system" VARCHAR(6000) ENCODE raw
)

DISTSTYLE ALL
;

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_null_user_id_reason_categories";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_null_user_id_reason_categories"
(
	"id" INTEGER NOT NULL ENCODE raw,
	"reason_category" VARCHAR(765) NOT NULL ENCODE raw
)

DISTSTYLE ALL
;

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_browsers";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_browsers"
(
	"browser_platform_id" INTEGER ENCODE raw PRIMARY KEY NOT NULL,
	"browser_platform" VARCHAR(6000) ENCODE raw
)

DISTSTYLE ALL
;

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_advertisers";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_advertisers"
(
	"floodlight_configuration" INTEGER ENCODE raw REFERENCES gaintheory_us_targetusa.targetdfa2_custom_floodlight_variables(floodlight_configuration),
	"advertiser_id" INTEGER ENCODE raw PRIMARY KEY,
	"advertiser" VARCHAR(6000) ENCODE raw,
	"advertiser_group_id" INTEGER ENCODE raw,
	"advertiser_group" VARCHAR(6000) ENCODE raw
)

DISTSTYLE ALL
;

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_campaigns";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_campaigns"
(
	"advertiser_id" INTEGER ENCODE raw REFERENCES gaintheory_us_targetusa.targetdfa2_advertisers(advertiser_id),
	"campaign_id" INTEGER ENCODE raw PRIMARY KEY NOT NULL,
	"campaign" VARCHAR(6000) ENCODE zstd,
	"campaign_start_date" DATE ENCODE raw,
	"campaign_end_date" DATE ENCODE raw,
	"billing_invoice_code" VARCHAR(6000) ENCODE raw
)

DISTSTYLE ALL
;

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_cities";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_cities"
(
	"city_id" INTEGER   ENCODE raw PRIMARY KEY NOT NULL,
	"city" VARCHAR(6000)   ENCODE zstd
)

DISTSTYLE ALL
;

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

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_activity_types";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_activity_types"
(
	"floodlight_configuration" INTEGER ENCODE raw REFERENCES gaintheory_us_targetusa.targetdfa2_custom_floodlight_variables(floodlight_configuration),
	"activity_group_id" INTEGER ENCODE raw PRIMARY KEY NOT NULL,
	"activity_type" VARCHAR(6000) ENCODE raw,
	"activity_group" VARCHAR(6000) ENCODE raw
)

DISTSTYLE ALL
;

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_activity_cats";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_activity_cats"
(
	"floodlight_configuration" INTEGER ENCODE raw references gaintheory_us_targetusa.targetdfa2_custom_floodlight_variables(floodlight_configuration),
	"activity_group_id" INTEGER ENCODE raw references gaintheory_us_targetusa.targetdfa2_activity_types(activity_group_id),
	"activity_type" VARCHAR(6000) ENCODE raw,
	"activity_id" INTEGER ENCODE raw PRIMARY KEY NOT NULL,
	"activity_sub_type" VARCHAR(6000) ENCODE raw,
	"activity" VARCHAR(6000) ENCODE raw,
	"tag_counting_method_id" INTEGER ENCODE raw
)

DISTSTYLE ALL
;

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_placements";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_placements"
(
	"campaign_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_campaigns(campaign_id),
	"site_id_dcm" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_sites(site_id_dcm),
	"placement_id" INTEGER   ENCODE zstd PRIMARY KEY NOT NULL,
	"site_keyname" VARCHAR(6000)   ENCODE zstd,
	"placement" VARCHAR(6000)   ENCODE zstd,
	"content_category" VARCHAR(6000)   ENCODE zstd,
	"placement_strategy" VARCHAR(6000)   ENCODE zstd,
	"placement_start_date" DATE   ENCODE zstd,
	"placement_end_date" DATE   ENCODE zstd,
	"placement_group_type" VARCHAR(6000)   ENCODE zstd,
	"package_roadblock_id" VARCHAR(6000)   ENCODE zstd,
	"placement_cost_structure" VARCHAR(6000)   ENCODE zstd,
	"placement_cap_cost_option" VARCHAR(6000)   ENCODE zstd,
	"activity_id" INTEGER   ENCODE zstd,
	"flighting_activated" BOOLEAN ENCODE raw
)

DISTSTYLE ALL
;

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_placement_cost";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_placement_cost"
(
	"placement_id" INTEGER   ENCODE delta32k REFERENCES gaintheory_us_targetusa.targetdfa2_placements(placement_id),
	"placement_start_date" DATE   ENCODE zstd,
	"placement_end_date" DATE   ENCODE zstd,
	"package_total_booked_units" BIGINT   ENCODE zstd,
	"placement_rate" DOUBLE PRECISION   ENCODE zstd,
	"placement_comments" VARCHAR(6000)   ENCODE zstd
)

DISTSTYLE ALL
;

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_designated_market_areas";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_designated_market_areas"
(
	"designated_market_area_dma_id" INTEGER ENCODE raw PRIMARY KEY NOT NULL,
	"designated_market_area" VARCHAR(6000) ENCODE raw
)

DISTSTYLE ALL
;

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_keyword_value";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_keyword_value"
(
	"ad_id" INTEGER   ENCODE delta32k REFERENCES gaintheory_us_targetusa.targetdfa2_ads(ad_id),
	"keyword" VARCHAR(12000)   ENCODE zstd
)

DISTSTYLE ALL
;

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_paid_search";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_paid_search"
(
	"ad_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_ads(ad_id),
	"advertiser_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_advertisers(advertiser_id),
	"campaign_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_campaigns(campaign_id),
	"paid_search_ad_id" BIGINT   ENCODE zstd,
	"paid_search_legacy_keyword_id" BIGINT   ENCODE zstd,
	"paid_search_keyword_id" BIGINT   ENCODE zstd,
	"paid_search_campaign" VARCHAR(6000)   ENCODE zstd,
	"paid_search_ad_group" VARCHAR(6000)   ENCODE zstd,
	"paid_search_bid_strategy" VARCHAR(6000)   ENCODE zstd,
	"paid_search_landing_page_url" VARCHAR(6000)   ENCODE zstd,
	"paid_search_keyword" VARCHAR(6000)   ENCODE zstd,
	"paid_search_match_type" VARCHAR(6000)   ENCODE zstd
)

DISTSTYLE ALL
;

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_ad_placement_assignments";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_ad_placement_assignments"
(
	"ad_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_ads(ad_id),
	"placement_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_placements(placement_id),
	PRIMARY KEY(ad_id,placement_id)
)

DISTSTYLE ALL
;

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_creative_ad_assignments";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_creative_ad_assignments"
(
	"ad_id" INTEGER NOT NULL ENCODE zstd references gaintheory_us_targetusa.targetdfa2_ads(ad_id),
	"creative_id" INTEGER NOT NULL  ENCODE zstd,
	"creative_start_date" BIGINT   ENCODE zstd,
	"creative_end_date" BIGINT   ENCODE zstd,
	"creative_rotation_type" VARCHAR(6000)   ENCODE zstd,
	"creative_groups_1" VARCHAR(6000)   ENCODE zstd,
	"creative_groups_2" VARCHAR(6000)   ENCODE zstd,
	"ad_click_url" VARCHAR(6000)   ENCODE zstd
)

DISTSTYLE ALL
;

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

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_custom_creative_fields";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_custom_creative_fields"
(
	"advertiser_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_advertisers(advertiser_id),
	"creative_id" INTEGER   ENCODE lzo,
	"creative_field_number" INTEGER ENCODE raw,
	"creative_field_name" VARCHAR(6000)   ENCODE zstd,
	"creative_field_value" VARCHAR(6000)   ENCODE zstd
)

DISTSTYLE ALL
;

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_click";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_click"
(
	"event_time" BIGINT NOT NULL  ENCODE zstd,
	"user_id" VARCHAR(50) NOT NULL  ENCODE zstd,
	"advertiser_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_advertisers(advertiser_id),
	"campaign_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_campaigns(campaign_id),
	"ad_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_ads(ad_id),
	"rendering_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_creatives(rendering_id),
	"creative_version" INTEGER   ENCODE zstd,
	"site_id_dcm" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_sites(site_id_dcm),
	"placement_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_placements(placement_id),
	"country_code" CHAR(2)   ENCODE zstd,
	"state_region" CHAR(2)   ENCODE zstd,
	"browser_platform_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_browsers(browser_platform_id),
	"browser_platform_version" DOUBLE PRECISION   ENCODE zstd,
	"operating_system_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_operating_systems(operating_system_id),
	"designated_market_area_dma_id" INTEGER   ENCODE bytedict REFERENCES gaintheory_us_targetusa.targetdfa2_designated_market_areas(designated_market_area_dma_id),
	"city_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_cities(city_id),
	"zip_postal_code" VARCHAR(10)   ENCODE zstd,
	"u_value" VARCHAR(512)   ENCODE zstd,
	"segment_value_1" BIGINT   ENCODE zstd,
	"partner1_id" VARCHAR(255)   ENCODE zstd,
	"partner2_id" VARCHAR(255)   ENCODE zstd,
	"md_user_id_numeric" BIGINT NOT NULL ENCODE raw,
	"md_user_id_0" BOOLEAN NOT NULL  ENCODE zstd,
	"md_event_time" TIMESTAMP WITHOUT TIME ZONE NOT NULL  ENCODE zstd,
	"md_file_date" INTEGER NOT NULL  ENCODE zstd
)

distkey(md_user_id_numeric)
;

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

--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_impression";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_impression"
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
	"designated_market_area_dma_id" INTEGER   ENCODE bytedict REFERENCES gaintheory_us_targetusa.targetdfa2_designated_market_areas(designated_market_area_dma_id),
	"city_id" INTEGER   ENCODE zstd,
	"zip_postal_code" VARCHAR(10)   ENCODE zstd,
	"u_value" VARCHAR(512)   ENCODE zstd,
	"partner1_id" VARCHAR(255)   ENCODE zstd,
	"partner2_id" VARCHAR(255)   ENCODE zstd,
	"active_view_eligible_impressions" INTEGER   ENCODE zstd,
	"active_view_measurable_impressions" INTEGER   ENCODE zstd,
	"active_view_viewable_impressions" INTEGER   ENCODE zstd,
	"md_user_id_numeric" BIGINT NOT NULL ENCODE raw distkey,
	"md_user_id_0" BOOLEAN NOT NULL ENCODE raw,
	"md_event_time" TIMESTAMP WITHOUT TIME ZONE NOT NULL  ENCODE raw,
	"md_file_date" INTEGER NOT NULL  ENCODE zstd,
	"epoch_time" DOUBLE PRECISION ENCODE raw,
	"impression_id" BIGINT IDENTITY(0,1)
)
SORTKEY(epoch_time)
;

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
