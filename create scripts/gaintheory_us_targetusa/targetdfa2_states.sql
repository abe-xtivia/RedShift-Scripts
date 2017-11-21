--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_states";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_states"
(
	"state_region" VARCHAR(6000) ENCODE raw,
	"state_region_full_name" VARCHAR(6000) ENCODE raw
)

DISTSTYLE ALL
;