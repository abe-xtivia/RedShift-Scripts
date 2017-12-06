CREATE TABLE mec_us_trp.sizmek_accounts
(
   accountid        integer        NOT NULL ENCODE raw primary key,
   accountname      varchar(300)   NOT NULL ENCODE raw,
   defaulttimezone  integer        NOT NULL ENCODE raw
)
DISTSTYLE ALL
;