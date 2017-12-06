CREATE TABLE mec_us_trp.sizmek_sites
(
   siteid    bigint         NOT NULL ENCODE raw primary key,
   sitename  varchar(300)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;