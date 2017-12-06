CREATE TABLE mec_us_trp.sizmek_device_type
(
   devicetypeid    bigint         NOT NULL ENCODE raw primary key,
   devicetypename  varchar(150)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;