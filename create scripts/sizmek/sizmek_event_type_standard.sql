CREATE TABLE mec_us_trp.sizmek_event_type_standard
(
   eventtypeid    bigint         NOT NULL ENCODE raw primary key,
   eventtypename  varchar(192)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;