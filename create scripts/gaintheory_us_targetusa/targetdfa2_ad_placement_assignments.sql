--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_ad_placement_assignments";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_ad_placement_assignments"
(
	"ad_id" INTEGER   ENCODE zstd
	,"placement_id" INTEGER   ENCODE zstd
)
DISTSTYLE EVEN
;