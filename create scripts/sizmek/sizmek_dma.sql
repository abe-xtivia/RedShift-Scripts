CREATE TABLE mec_us_trp.sizmek_dma
(
   dmacode  bigint         NOT NULL ENCODE raw primary key,
   dmaname  varchar(150)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;