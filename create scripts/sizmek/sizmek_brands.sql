CREATE TABLE mec_us_trp.sizmek_brands
(
   brandid       bigint         NOT NULL ENCODE raw primary key,
   brandname     varchar(600)   NOT NULL ENCODE raw,
   advertiserid  bigint         NOT NULL ENCODE raw
)
DISTSTYLE ALL
;


