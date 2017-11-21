--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_browsers";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_browsers"
(
	"browser_platform_id" INTEGER ENCODE raw PRIMARY KEY NOT NULL,
	"browser_platform" VARCHAR(6000) ENCODE raw
)

DISTSTYLE ALL
;