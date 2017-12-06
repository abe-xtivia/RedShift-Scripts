CREATE TABLE mec_us_trp.sizmek_site_visit_events
(
   userid                        varchar(108) ENCODE zstd,
   onetagid                      integer ENCODE zstd,
   sitevisittime                 timestamp ENCODE zstd,
   sitevisitclassification       varchar(50) ENCODE zstd,
   sitevisitreferraldomain       varchar(1500) ENCODE zstd,
   landingpagedomain             varchar(1500) ENCODE zstd,
   nskeyword                     varchar(300) ENCODE zstd,
   matchtype                     varchar(600) ENCODE zstd,
   customparam                   varchar(12000) ENCODE zstd,
   advertiserid                  integer ENCODE zstd,
   sitevisittimedefaulttimezone  timestamp,
   useridnumeric                 bigint ENCODE zstd,
   accountid                     integer ENCODE zstd references mec_us_trp.sizmek_accounts(accountid),
   md_file_date                  integer ENCODE zstd,
   md_user_id_numeric            bigint ENCODE zstd,
   acquiredtime                  timestamp ENCODE zstd
)
distkey(sitevisittimedefaulttimezone)
sortkey(sitevisittimedefaulttimezone)
;


