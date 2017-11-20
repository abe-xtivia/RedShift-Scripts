--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_activity_types";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_activity_types"
(
	"floodlight_configuration" INTEGER ENCODE raw
	,"activity_group_id" INTEGER ENCODE raw
	,"activity_type" VARCHAR(6000) ENCODE raw
	,"activity_group" VARCHAR(6000) ENCODE raw
)
primary key(activity_group_id),
foreign key(floodlight_configuration) references targetdfa2_custom_floodlight_configuration(floodlight_configuration)
DISTSTYLE EVEN
;