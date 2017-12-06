CREATE TABLE mec_us_trp.sizmek_state
(
   stateid    bigint         NOT NULL ENCODE raw primary key,
   statename  varchar(150)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;