CREATE TABLE mec_us_trp.sizmek_target_audience
(
   targetaudienceid    bigint         NOT NULL ENCODE raw primary key,
   targetaudiencename  varchar(600)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;


