CREATE TABLE mec_us_trp.sizmek_media_buy_channel
(
   channelid    bigint         NOT NULL ENCODE raw primary key,
   channelname  varchar(300)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;
