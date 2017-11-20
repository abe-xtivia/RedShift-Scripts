--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_activity_cats";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_activity_cats"
(
	"floodlight_configuration" INTEGER ENCODE raw
	,"activity_group_id" INTEGER ENCODE raw
	,"activity_type" VARCHAR(6000) ENCODE raw
	,"activity_id" INTEGER ENCODE raw
	,"activity_sub_type" VARCHAR(6000) ENCODE raw
	,"activity" VARCHAR(6000) ENCODE raw
	,"tag_counting_method_id" INTEGER ENCODE raw
)
primary key(activity_group_id),
foreign key(activity_id) references targetdfa2_activity(activity_id),
foreign key(floodlight_configuration) references targetdfa2_custom_floodlight_configuration(floodlight_configuration)
DISTSTYLE ALL
;