CREATE TABLE mec_us_trp.sizmek_search_ads
(
   eyeblasteradid  bigint          NOT NULL ENCODE raw,
   seadid          bigint          NOT NULL ENCODE raw primary key,
   adgroupid       bigint          NOT NULL ENCODE raw,
   destinationurl  varchar(6000) ENCODE raw,
   adtitle         varchar(1500) ENCODE raw,
   adtext          varchar(1500) ENCODE raw,
   addisplayurl    varchar(1500) ENCODE raw
)
DISTSTYLE ALL
;