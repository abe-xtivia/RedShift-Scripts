--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_rich_media_standard_event_types";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_rich_media_standard_event_types"
(
	"id" INTEGER NOT NULL ENCODE raw PRIMARY KEY NOT NULL,
	"name" VARCHAR(765) NOT NULL ENCODE raw
)

DISTSTYLE ALL
;