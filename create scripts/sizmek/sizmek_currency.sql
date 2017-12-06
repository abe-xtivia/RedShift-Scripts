CREATE TABLE mec_us_trp.sizmek_currency
(
   currencyid       bigint         NOT NULL ENCODE raw primary key,
   name             varchar(300)   NOT NULL ENCODE raw,
   symbol           varchar(150)   NOT NULL ENCODE raw,
   rateinusd        float8         NOT NULL ENCODE raw,
   hashname         varchar(150) ENCODE raw,
   currencyletters  varchar(150)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;