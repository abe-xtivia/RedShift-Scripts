CREATE TABLE "mec_us_trp.sizmek_display_campaigns"
(
   campaignid             bigint         NOT NULL ENCODE raw primary key,
   campaignname           varchar(900)   NOT NULL ENCODE raw,
   brandid                bigint         NOT NULL ENCODE raw references mec_us_trp.sizmek_brands(brandid),
   creationdate           timestamp ENCODE raw,
   startdate              timestamp ENCODE raw,
   enddate                timestamp ENCODE raw,
   segmentationtype       varchar(150) ENCODE raw,
   defaulttargetaudience  varchar(150) ENCODE raw,
   mastercampaignid       integer ENCODE raw,
   creationdate_localtz   timestamp ENCODE raw,
   startdate_localtz      timestamp ENCODE raw,
   enddate_localtz        timestamp ENCODE raw
)
DISTSTYLE ALL
;