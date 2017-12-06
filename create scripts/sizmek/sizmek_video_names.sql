CREATE TABLE mec_us_trp.sizmek_video_names
(
   videoassetname  varchar(600)   NOT NULL ENCODE zstd,
   assetid         bigint         NOT NULL ENCODE raw primary key,
   videoduration   integer ENCODE raw,
   videobitrate    integer ENCODE raw,
   videofiletype   varchar(30) ENCODE raw
)
DISTSTYLE ALL
;


