--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_placements";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_placements"
(
	"campaign_id" INTEGER   ENCODE zstd
	,"site_id_dcm" INTEGER   ENCODE zstd
	,"placement_id" INTEGER   ENCODE zstd
	,"site_keyname" VARCHAR(6000)   ENCODE zstd
	,"placement" VARCHAR(6000)   ENCODE zstd
	,"content_category" VARCHAR(6000)   ENCODE zstd
	,"placement_strategy" VARCHAR(6000)   ENCODE zstd
	,"placement_start_date" DATE   ENCODE zstd
	,"placement_end_date" DATE   ENCODE zstd
	,"placement_group_type" VARCHAR(6000)   ENCODE zstd
	,"package_roadblock_id" VARCHAR(6000)   ENCODE zstd
	,"placement_cost_structure" VARCHAR(6000)   ENCODE zstd
	,"placement_cap_cost_option" VARCHAR(6000)   ENCODE zstd
	,"activity_id" INTEGER   ENCODE zstd
	,"flighting_activated" BOOLEAN ENCODE raw
)
primary key(placement_id),
foreign key(campaign_id) references targetdfa2_campaigns(campaign_id),
foreign key(site_id_dcm) references targetdfa2_sites(site_id_dcm),
foreign key(activity_id) references targetdfa2_activity(activity_id)

DISTSTYLE EVEN
;