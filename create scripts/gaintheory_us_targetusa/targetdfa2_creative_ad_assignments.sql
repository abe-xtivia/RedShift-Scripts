--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_creative_ad_assignments";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_creative_ad_assignments"
(
	"ad_id" INTEGER NOT NULL ENCODE zstd
	,"creative_id" INTEGER NOT NULL  ENCODE zstd
	,"creative_start_date" BIGINT   ENCODE zstd
	,"creative_end_date" BIGINT   ENCODE zstd
	,"creative_rotation_type" VARCHAR(6000)   ENCODE zstd
	,"creative_groups_1" VARCHAR(6000)   ENCODE zstd
	,"creative_groups_2" VARCHAR(6000)   ENCODE zstd
	,"ad_click_url" VARCHAR(6000)   ENCODE zstd
)
foreign key(ad_id) references targetdfa2_ads(ad_id),
foreign key(creative_id) references targetdfa2_creatives(creative_id)
DISTSTYLE EVEN
;