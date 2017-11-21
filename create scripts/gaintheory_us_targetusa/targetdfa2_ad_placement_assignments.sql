--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_ad_placement_assignments";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_ad_placement_assignments"
(
	"ad_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_ads(ad_id),
	"placement_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_placements(placement_id),
	PRIMARY KEY(ad_id,placement_id)
)

DISTSTYLE ALL
;