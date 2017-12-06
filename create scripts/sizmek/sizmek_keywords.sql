CREATE TABLE mec_us_trp.sizmek_keywords
(
   sekeywordid     bigint          NOT NULL ENCODE raw primary key,
   keywordname     varchar(1200)   NOT NULL ENCODE raw,
   adgroupid       bigint          NOT NULL ENCODE raw,
   keywordid       bigint          NOT NULL ENCODE raw,
   position        float8          NOT NULL ENCODE raw,
   matchtype       varchar(600) ENCODE raw,
   destinationurl  varchar(6000) ENCODE raw
)
DISTSTYLE ALL
;