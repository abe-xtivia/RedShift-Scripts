CREATE TABLE mec_us_trp.sizmek_country
(
   countryid    bigint         NOT NULL ENCODE raw,
   countryname  varchar(150)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;