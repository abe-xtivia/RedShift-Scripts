--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_custom_creative_fields";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_custom_creative_fields"
(
	"advertiser_id" INTEGER   ENCODE zstd
	,"creative_id" INTEGER   ENCODE lzo
	,"creative_field_number" INTEGER ENCODE raw
	,"creative_field_name" VARCHAR(6000)   ENCODE zstd
	,"creative_field_value" VARCHAR(6000)   ENCODE zstd
)
foreign key(advertiser_id) references targetdfa2_advertisers(advertiser_id),
foreign key(creative_id) references targetdfa2_creatives(creative_id)

DISTSTYLE EVEN
;