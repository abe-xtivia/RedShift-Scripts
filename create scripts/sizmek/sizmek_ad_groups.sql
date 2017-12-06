CREATE TABLE mec_us_trp.sizmek_ad_groups
(
   adgroupid         bigint          NOT NULL ENCODE raw primary key,
   searchcampaignid  bigint          NOT NULL ENCODE raw,
   seadgroupid       bigint ENCODE raw,
   adgroupname       varchar(1200)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;


