CREATE TABLE mec_us_trp.sizmek_operating_system
(
   osid          bigint         NOT NULL ENCODE raw primary key,
   osname        varchar(384)   NOT NULL ENCODE raw,
   osversion     varchar(192) ENCODE raw,
   devicetypeid  bigint         NOT NULL ENCODE raw
)
DISTSTYLE ALL
;