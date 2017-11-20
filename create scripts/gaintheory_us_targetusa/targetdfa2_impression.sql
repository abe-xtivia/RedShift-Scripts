--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_impression";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_impression"
(
	"event_time" BIGINT NOT NULL  ENCODE zstd
	,"user_id" VARCHAR(50) NOT NULL  ENCODE zstd
	,"advertiser_id" INTEGER   ENCODE zstd
	,"campaign_id" INTEGER   ENCODE zstd
	,"ad_id" INTEGER   ENCODE bytedict
	,"rendering_id" INTEGER   ENCODE bytedict
	,"creative_version" INTEGER   ENCODE zstd
	,"site_id_dcm" INTEGER   ENCODE zstd
	,"placement_id" INTEGER   ENCODE bytedict
	,"country_code" CHAR(2)   ENCODE zstd
	,"state_region" CHAR(2)   ENCODE zstd
	,"browser_platform_id" INTEGER   ENCODE zstd
	,"browser_platform_version" DOUBLE PRECISION   ENCODE zstd
	,"operating_system_id" INTEGER   ENCODE zstd
	,"designated_market_area_dma_id" INTEGER   ENCODE bytedict
	,"city_id" INTEGER   ENCODE zstd
	,"zip_postal_code" VARCHAR(10)   ENCODE zstd
	,"u_value" VARCHAR(512)   ENCODE zstd
	,"partner1_id" VARCHAR(255)   ENCODE zstd
	,"partner2_id" VARCHAR(255)   ENCODE zstd
	,"active_view_eligible_impressions" INTEGER   ENCODE zstd
	,"active_view_measurable_impressions" INTEGER   ENCODE zstd
	,"active_view_viewable_impressions" INTEGER   ENCODE zstd
	,"md_user_id_numeric" BIGINT NOT NULL ENCODE raw
	,"md_user_id_0" BOOLEAN NOT NULL ENCODE raw
	,"md_event_time" TIMESTAMP WITHOUT TIME ZONE NOT NULL  ENCODE zstd
	,"md_file_date" INTEGER NOT NULL  ENCODE zstd
)
foreign key(advertiser_id) references targetdfa2_advertisers(advertiser_id),
foreign key(campaign_id) references targetdfa2_campaigns(campaign_id),
foreign key(ad_id) references targetdfa2_ads(ad_id),
foreign key(rendering_id) references targetdfa2_creatives(rendering_id),
foreign key(site_id_dcm) references targetdfa2_sites(site_id_dcm),
foreign key(placement_id) references targetdfa2_placements(placement_id),
foreign key(browser_platform_id) references targetdfa2_browsers(browser_platform_id),
foreign key(operating_system_id) references targetdfa2_operating_systems(operating_system_id),
foreign key(designated_market_area_dma_id) references targetdfa2_designated_market_areas(designated_market_area_dma_id),
foreign key(city_id) references targetdfa2_cities(city_id)
DISTSTYLE EVEN
;