CREATE TABLE mec_us_trp.sizmek_search_campaigns
(
   ebcampaignid       bigint          NOT NULL ENCODE raw,
   secampaignid       bigint          NOT NULL ENCODE raw primary key,
   secampaignname     varchar(900)    NOT NULL ENCODE raw,
   seaccountid        varchar(1200) ENCODE raw,
   startdate          timestamp ENCODE raw,
   enddate            timestamp ENCODE raw,
   status             varchar(150) ENCODE raw,
   startdate_localtz  timestamp ENCODE raw,
   enddate_localtz    timestamp ENCODE raw
);


