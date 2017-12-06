CREATE TABLE mec_us_trp.sizmek_advertisers
(
   advertiserid            bigint         NOT NULL ENCODE raw primary key,
   advertisername          varchar(300)   NOT NULL ENCODE raw,
   accountid               bigint         NOT NULL ENCODE raw,
   camodelid               bigint         NOT NULL ENCODE raw,
   impressioncookiewindow  bigint         NOT NULL ENCODE raw,
   clickcookiewindow       bigint         NOT NULL ENCODE raw
)
DISTSTYLE ALL
;