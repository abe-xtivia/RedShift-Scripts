--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_custom_floodlight_variables";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_custom_floodlight_variables"
(
	"floodlight_configuration" INTEGER ENCODE raw
	,"floodlight_variable_id" VARCHAR(6000) ENCODE raw
	,"floodlight_variable_name" VARCHAR(6000) ENCODE raw
)
DISTSTYLE EVEN
;