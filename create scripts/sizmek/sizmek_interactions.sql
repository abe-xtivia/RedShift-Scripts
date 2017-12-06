CREATE TABLE mec_us_trp.sizmek_interactions
(
   interactionid      varchar(600)   NOT NULL ENCODE zstd primary key,
   interactionname    varchar(600)   NOT NULL ENCODE zstd,
   interactiontype    varchar(30)    NOT NULL ENCODE raw,
   custominteraction  varchar(30)    NOT NULL ENCODE raw
)
DISTSTYLE ALL
;