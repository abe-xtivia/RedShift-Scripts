--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_advertisers";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_advertisers"
(
	"floodlight_configuration" INTEGER ENCODE raw
	,"advertiser_id" INTEGER ENCODE raw
	,"advertiser" VARCHAR(6000) ENCODE raw
	,"advertiser_group_id" INTEGER ENCODE raw
	,"advertiser_group" VARCHAR(6000) ENCODE raw
)
primary key(advertiser_id)
foreign key(floodlight_configuration) references targetdfa2_custom_floodlight_configuration(floodlight_configuration)

DISTSTYLE EVEN
;