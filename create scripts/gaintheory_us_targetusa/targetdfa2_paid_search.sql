--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_paid_search";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_paid_search"
(
	"ad_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_ads(ad_id),
	"advertiser_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_advertisers(advertiser_id),
	"campaign_id" INTEGER   ENCODE zstd REFERENCES gaintheory_us_targetusa.targetdfa2_campaigns(campaign_id),
	"paid_search_ad_id" BIGINT   ENCODE zstd,
	"paid_search_legacy_keyword_id" BIGINT   ENCODE zstd,
	"paid_search_keyword_id" BIGINT   ENCODE zstd,
	"paid_search_campaign" VARCHAR(6000)   ENCODE zstd,
	"paid_search_ad_group" VARCHAR(6000)   ENCODE zstd,
	"paid_search_bid_strategy" VARCHAR(6000)   ENCODE zstd,
	"paid_search_landing_page_url" VARCHAR(6000)   ENCODE zstd,
	"paid_search_keyword" VARCHAR(6000)   ENCODE zstd,
	"paid_search_match_type" VARCHAR(6000)   ENCODE zstd
)

DISTSTYLE ALL
;