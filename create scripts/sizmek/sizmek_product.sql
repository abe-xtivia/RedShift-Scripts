CREATE TABLE mec_us_trp.sizmek_product
(
   productid    bigint         NOT NULL ENCODE zstd primary key,
   productname  varchar(600)   NOT NULL ENCODE zstd
)
DISTSTYLE ALL
;


