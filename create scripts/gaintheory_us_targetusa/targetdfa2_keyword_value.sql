--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_keyword_value";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_keyword_value"
(
	"ad_id" INTEGER   ENCODE delta32k REFERENCES gaintheory_us_targetusa.targetdfa2_ads(ad_id),
	"keyword" VARCHAR(12000)   ENCODE zstd
)

DISTSTYLE ALL
;