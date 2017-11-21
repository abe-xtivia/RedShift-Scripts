--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_activity_cats";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_activity_cats"
(
	"floodlight_configuration" INTEGER ENCODE raw references gaintheory_us_targetusa.targetdfa2_custom_floodlight_configuration(floodlight_configuration),
	"activity_group_id" INTEGER ENCODE raw references gaintheory_us_targetusa.targetdfa2_activity_types(activity_group_id),
	"activity_type" VARCHAR(6000) ENCODE raw,
	"activity_id" INTEGER ENCODE raw PRIMARY KEY NOT NULL,
	"activity_sub_type" VARCHAR(6000) ENCODE raw,
	"activity" VARCHAR(6000) ENCODE raw,
	"tag_counting_method_id" INTEGER ENCODE raw
)

DISTSTYLE ALL
;