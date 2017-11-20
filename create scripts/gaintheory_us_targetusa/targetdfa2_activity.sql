--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_activity";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_activity"
(
	"event_time" BIGINT NOT NULL  ENCODE zstd
	,"user_id" VARCHAR(50) NOT NULL  ENCODE zstd
	,"advertiser_id" INTEGER   ENCODE zstd
	,"campaign_id" INTEGER   ENCODE lzo
	,"ad_id" INTEGER   ENCODE lzo
	,"rendering_id" INTEGER   ENCODE lzo
	,"creative_version" INTEGER   ENCODE lzo
	,"site_id_dcm" INTEGER   ENCODE lzo
	,"placement_id" INTEGER   ENCODE lzo
	,"country_code" CHAR(2)   ENCODE zstd
	,"state_region" CHAR(2)   ENCODE zstd
	,"browser_platform_id" INTEGER   ENCODE zstd
	,"browser_platform_version" DOUBLE PRECISION   ENCODE zstd
	,"operating_system_id" INTEGER   ENCODE zstd
	,"u_value" VARCHAR(512)   ENCODE zstd
	,"activity_id" INTEGER   ENCODE zstd
	,"tran_value" VARCHAR(10)   ENCODE zstd
	,"other_data" VARCHAR(12000)   ENCODE zstd
	,"ord_value" VARCHAR(255)   ENCODE zstd
	,"interaction_time" BIGINT   ENCODE lzo
	,"conversion_id" INTEGER   ENCODE zstd
	,"segment_value_1" BIGINT   ENCODE lzo
	,"floodlight_configuration" INTEGER   ENCODE zstd
	,"partner1_id" VARCHAR(255)   ENCODE zstd
	,"partner2_id" VARCHAR(255)   ENCODE zstd
	,"total_conversions" INTEGER   ENCODE zstd
	,"total_revenue" NUMERIC(37,15)   ENCODE zstd
	,"md_user_id_numeric" BIGINT NOT NULL ENCODE raw
	,"md_user_id_0" BOOLEAN NOT NULL ENCODE raw
	,"md_event_time" TIMESTAMP WITHOUT TIME ZONE NOT NULL  ENCODE zstd
	,"md_file_date" INTEGER NOT NULL  ENCODE zstd
)
primary key(activity_id),
foreign key(campaign_id) references targetdfa2_campaigns(campaign_id),
foreign key(advertiser_id) references targetdfa2_advertisers(advertiser_id),
foreign key(ad_id) references targetdfa2_ads(ad_id),
foreign key(rendering_id) references targetdfa2_creatives(rendering_id),
foreign key(site_id_dcm) references targetdfa2_sites(site_id_dcm),
foreign key(placement_id) references targetdfa2_placements(placement_id)

DISTSTYLE EVEN
;