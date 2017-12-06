CREATE TABLE mec_us_trp.sizmek_master_campaigns
(
   mastercampaignid      bigint         NOT NULL ENCODE raw primary key,
   mastercampaignname    varchar(900)   NOT NULL ENCODE raw,
   brandid               bigint         NOT NULL ENCODE raw,
   creationdate          timestamp ENCODE raw,
   segmentationtype      varchar(150) ENCODE raw,
   creationdate_localtz  timestamp ENCODE raw
)
DISTSTYLE ALL
;