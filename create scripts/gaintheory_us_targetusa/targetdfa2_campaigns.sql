--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_campaigns";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_campaigns"
(
	"advertiser_id" INTEGER ENCODE raw
	,"campaign_id" INTEGER ENCODE raw
	,"campaign" VARCHAR(6000) ENCODE zstd
	,"campaign_start_date" DATE ENCODE raw
	,"campaign_end_date" DATE ENCODE raw
	,"billing_invoice_code" VARCHAR(6000) ENCODE raw
)
primary key(campaign_id),
foreign key(advertiser_id) references targetdfa2_advertisers(advertiser_id)
DISTSTYLE EVEN
;