--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_designated_market_areas";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_designated_market_areas"
(
	"designated_market_area_dma_id" INTEGER ENCODE raw
	,"designated_market_area" VARCHAR(6000) ENCODE raw
)
DISTSTYLE EVEN
;