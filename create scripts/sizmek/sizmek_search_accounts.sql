CREATE TABLE mec_us_trp.sizmek_search_accounts
(
   seaccountid          varchar(1200)   NOT NULL ENCODE raw primary key,
   seaccountname        varchar(1200)   NOT NULL ENCODE raw,
   ebsearchaccountid    bigint          NOT NULL ENCODE raw,
   ebsearchaccountname  varchar(300)    NOT NULL ENCODE raw,
   advertiserid         bigint          NOT NULL ENCODE raw references mec_us_trp.sizmek_advertisers(advertiserid),
   searchenginename     varchar(600)    NOT NULL ENCODE raw,
   status               varchar(150) ENCODE raw
)
DISTSTYLE ALL
;


