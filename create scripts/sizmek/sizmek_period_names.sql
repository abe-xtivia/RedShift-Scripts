CREATE TABLE mec_us_trp.sizmek_period_names
(
   periodid                 bigint         NOT NULL ENCODE raw primary key,
   periodname               varchar(600)   NOT NULL ENCODE raw,
   packageid                bigint         NOT NULL ENCODE raw,
   periodstartdate          timestamp      NOT NULL ENCODE raw,
   periodenddate            timestamp      NOT NULL ENCODE raw,
   periodstartdate_localtz  timestamp ENCODE raw,
   periodenddate_localtz    timestamp ENCODE raw
)
DISTSTYLE ALL
;