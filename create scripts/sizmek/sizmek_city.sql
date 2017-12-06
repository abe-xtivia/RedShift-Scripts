CREATE TABLE mec_us_trp.sizmek_city
(
   cityid    bigint         NOT NULL ENCODE zstd primary key,
   cityname  varchar(150)   NOT NULL ENCODE zstd
)
DISTSTYLE ALL
;