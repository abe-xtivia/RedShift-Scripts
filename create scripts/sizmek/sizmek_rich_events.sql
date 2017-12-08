CREATE TABLE mec_us_trp.sizmek_rich_events
(
   eventid                         varchar(108)    NOT NULL ENCODE zstd,
   userid                          varchar(108)    NOT NULL ENCODE zstd,
   eventtypeid                     integer         NOT NULL references mec_us_trp.sizmek_event_type_rich(eventtypeid),
   interactionid                   varchar(600)    NOT NULL ENCODE zstd,
   interactionduration             integer ENCODE zstd,
   videoassetid                    integer ENCODE zstd references mec_us_trp.sizmek_video_names(assetid),
   interactiondate                 timestamp       NOT NULL ENCODE zstd,
   entityid                        integer         NOT NULL ENCODE zstd,
   placementid                     integer         NOT NULL ENCODE zstd,
   siteid                          integer         NOT NULL ENCODE zstd references mec_us_trp.sizmek_sites(siteid),
   campaignid                      integer         NOT NULL ENCODE zstd references mec_us_trp.sizmek_display_campaigns(campaignid),
   brandid                         integer         NOT NULL ENCODE zstd references mec_us_trp.sizmek_brands(brandid),
   advertiserid                    integer         NOT NULL references mec_us_trp.sizmek_advertisers(advertiserid),
   accountid                       integer         NOT NULL ENCODE zstd references mec_us_trp.sizmek_accounts(accountid),
   pcp                             varchar(6144) ENCODE zstd,
   mobiledevice                    varchar(100) ENCODE zstd,
   mobilecarrier                   varchar(100) ENCODE zstd,
   versionid                       integer ENCODE zstd,
   audienceid                      integer ENCODE zstd,
   deliverygroupid                 integer ENCODE zstd,
   referrer                        varchar(6144) ENCODE zstd,
   impressionexchangetoken         varchar(50) ENCODE zstd,
   interactiondatedefaulttimezone  timestamp       NOT NULL,
   useridnumeric                   bigint          NOT NULL ENCODE zstd,
   md_file_date                    integer         NOT NULL ENCODE zstd,
   md_user_id_numeric              bigint          NOT NULL ENCODE raw,
   acquiredtime                    timestamp ENCODE zstd
)
diststyle even
;



