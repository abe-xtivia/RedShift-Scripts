--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_browsers";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_browsers"
(
	"browser_platform_id" INTEGER ENCODE raw
	,"browser_platform" VARCHAR(6000) ENCODE raw
)
primary key(browser_platform_id)
DISTSTYLE EVEN
;