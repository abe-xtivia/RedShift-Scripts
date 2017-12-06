CREATE TABLE mec_us_trp.sizmek_panel_names
(
   panelname   varchar(600)   NOT NULL ENCODE raw,
   panelid     bigint         NOT NULL ENCODE raw primary key,
   adid        bigint         NOT NULL ENCODE raw,
   autoexpand  varchar(30)    NOT NULL ENCODE raw
)
DISTSTYLE ALL
;