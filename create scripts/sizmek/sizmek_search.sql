CREATE TABLE mec_us_trp.sizmek_search
(
   semid                            bigint          NOT NULL ENCODE zstd,
   uniqueid                         varchar(600)    NOT NULL ENCODE zstd primary key,
   publisherid                      bigint ENCODE zstd,
   publishertypeid                  bigint ENCODE zstd,
   accountid                        varchar(600) ENCODE zstd references mec_us_trp.sizmek_accounts(accountid),
   accountname                      varchar(600) ENCODE zstd,
   accountstatus                    varchar(60) ENCODE zstd,
   currencyisocode                  varchar(9) ENCODE zstd,
   campaignid                       bigint ENCODE zstd references mec_us_trp.sizmek_display_campaigns(campaignid),
   campaignname                     varchar(900) ENCODE zstd,
   campaignstartdate                timestamp ENCODE zstd,
   campaignenddate                  timestamp ENCODE zstd,
   campaignstatus                   varchar(150) ENCODE zstd,
   adgroupid                        bigint ENCODE zstd,
   adgroupname                      varchar(600) ENCODE zstd,
   adgroupstatus                    varchar(60) ENCODE zstd,
   keywordid                        bigint ENCODE zstd,
   keywordtext                      varchar(600) ENCODE zstd,
   keywordstatus                    varchar(60) ENCODE zstd,
   adid                             bigint ENCODE zstd,
   adname                           varchar(3000) ENCODE zstd,
   adstatus                         varchar(60) ENCODE zstd,
   accountlastmodified              timestamp ENCODE bytedict,
   campaignlastmodified             timestamp ENCODE zstd,
   adgrouplastmodified              timestamp ENCODE zstd,
   keywordlastmodified              timestamp ENCODE zstd,
   adlastmodified                   timestamp ENCODE zstd,
   reportcreationtimestamp          timestamp ENCODE zstd,
   advertiserid                     bigint ENCODE zstd references mec_us_trp.sizmek_advertisers(advertiserid),
   campaignstartdate_localtz        timestamp ENCODE zstd,
   campaignenddate_localtz          timestamp ENCODE lzo,
   accountlastmodified_localtz      timestamp ENCODE zstd,
   campaignlastmodified_localtz     timestamp ENCODE zstd,
   adgrouplastmodified_localtz      timestamp ENCODE zstd,
   keywordlastmodified_localtz      timestamp ENCODE zstd,
   adlastmodified_localtz           timestamp ENCODE zstd,
   reportcreationtimestamp_localtz  timestamp ENCODE zstd
)
DISTSTYLE EVEN
;


