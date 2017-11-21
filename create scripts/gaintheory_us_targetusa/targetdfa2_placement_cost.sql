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