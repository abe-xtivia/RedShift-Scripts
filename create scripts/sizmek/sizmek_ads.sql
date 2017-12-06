CREATE TABLE mec_us_trp.sizmek_ads
(
   adid                  bigint          NOT NULL ENCODE raw primary key,
   adname                varchar(900)    NOT NULL ENCODE zstd,
   placementid           bigint          NOT NULL ENCODE raw references mec_us_trp.sizmek_placements(placementid),
   description           varchar(3000) ENCODE raw,
   creationdate          timestamp       NOT NULL ENCODE raw,
   clickthroughurl       varchar(6000) ENCODE zstd,
   adformat              varchar(300)    NOT NULL ENCODE zstd,
   status                varchar(150)    NOT NULL ENCODE raw,
   classification1       varchar(300) ENCODE raw,
   classification2       varchar(300) ENCODE raw,
   classification3       varchar(300) ENCODE raw,
   classification4       varchar(300) ENCODE raw,
   classification5       varchar(300) ENCODE raw,
   smartversionad        bigint          NOT NULL ENCODE raw,
   smartversiongroup     varchar(1200) ENCODE raw,
   adsizeinkb            integer ENCODE raw,
   creationdate_localtz  timestamp ENCODE raw
)
DISTSTYLE ALL
;


