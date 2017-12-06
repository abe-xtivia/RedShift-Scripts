CREATE TABLE mec_us_trp.sizmek_browser_type
(
   browserid       bigint         NOT NULL ENCODE raw primary key
   browsername     varchar(384)   NOT NULL ENCODE raw,
   browserversion  varchar(192) ENCODE raw
)
DISTSTYLE ALL
;


