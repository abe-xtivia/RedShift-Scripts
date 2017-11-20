--DROP TABLE "gaintheory_us_targetusa"."targetdfa2_null_user_id_reason_categories";
CREATE TABLE IF NOT EXISTS "gaintheory_us_targetusa"."targetdfa2_null_user_id_reason_categories"
(
	"id" INTEGER NOT NULL ENCODE raw
	,"reason_category" VARCHAR(765) NOT NULL ENCODE raw
)
DISTSTYLE EVEN
;