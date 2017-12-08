CREATE TABLE mec_us_trp.sizmek_conversion_events
(
   userid                          varchar(108)     NOT NULL ENCODE zstd,
   conversionid                    varchar(108)     NOT NULL ENCODE zstd primary key,
   conversiondate                  timestamp        NOT NULL ENCODE zstd,
   conversiontagid                 integer          NOT NULL ENCODE zstd,
   advertiserid                    integer          NOT NULL references mec_us_trp.sizmek_advertisers(advertiserid),
   accountid                       integer          NOT NULL ENCODE zstd references mec_us_trp.sizmek_accounts(accountid),
   revenue                         float8 ENCODE zstd,
   currency                        integer ENCODE zstd,
   quantity                        integer ENCODE zstd,
   orderid                         varchar(50) ENCODE zstd,
   referrer                        varchar(12000) ENCODE zstd,
   productid                       varchar(300) ENCODE zstd references mec_us_trp.sizmek_product(productid),
   productinfo                     varchar(600) ENCODE zstd,
   winnerentityid                  integer,
   winnersemid                     integer ENCODE zstd,
   winnerseuniqueid                varchar(108) ENCODE zstd,
   eventtypeid                     integer,
   winnereventdate                 timestamp ENCODE zstd,
   placementid                     integer ENCODE zstd references mec_us_trp.sizmek_placements(placementid),
   siteid                          integer ENCODE zstd references mec_us_trp.sizmek_sites(siteid),
   campaignid                      integer ENCODE zstd references mec_us_trp.sizmek_display_campaigns(campaignid),
   adgroupid                       integer ENCODE lzo,
   brandid                         integer ENCODE zstd,
   countryid                       integer ENCODE zstd references mec_us_trp.sizmek_country(countryid),
   stateid                         integer ENCODE zstd references mec_us_trp.sizmek_state(stateid),
   dmaid                           integer ENCODE bytedict references mec_us_trp.sizmek_dma(dmaid),
   cityid                          integer ENCODE zstd references mec_us_trp.sizmek_city(cityid),
   zipcode                         varchar(32) ENCODE zstd,
   areacode                        varchar(32) ENCODE zstd,
   oscode                          integer ENCODE zstd,
   browsercode                     integer ENCODE zstd,
   string1                         varchar(600) ENCODE zstd,
   string2                         varchar(600) ENCODE zstd,
   string3                         varchar(600) ENCODE zstd,
   string4                         varchar(600) ENCODE zstd,
   string5                         varchar(600) ENCODE zstd,
   string6                         varchar(600) ENCODE zstd,
   string7                         varchar(600) ENCODE zstd,
   string8                         varchar(600) ENCODE zstd,
   string9                         varchar(600) ENCODE zstd,
   string10                        varchar(600) ENCODE zstd,
   string11                        varchar(600) ENCODE zstd,
   string12                        varchar(600) ENCODE zstd,
   string13                        varchar(600) ENCODE zstd,
   string14                        varchar(600) ENCODE zstd,
   string15                        varchar(600) ENCODE zstd,
   string16                        varchar(600) ENCODE zstd,
   string17                        varchar(600) ENCODE zstd,
   string18                        varchar(600) ENCODE zstd,
   string19                        varchar(600) ENCODE zstd,
   string20                        varchar(600) ENCODE zstd,
   string21                        varchar(600) ENCODE zstd,
   string22                        varchar(600) ENCODE zstd,
   string23                        varchar(600) ENCODE zstd,
   string24                        varchar(600) ENCODE zstd,
   string25                        varchar(600) ENCODE zstd,
   string26                        varchar(600) ENCODE zstd,
   string27                        varchar(600) ENCODE zstd,
   string28                        varchar(600) ENCODE zstd,
   string29                        varchar(600) ENCODE zstd,
   string30                        varchar(600) ENCODE zstd,
   string31                        varchar(600) ENCODE zstd,
   string32                        varchar(600) ENCODE zstd,
   string33                        varchar(600) ENCODE zstd,
   string34                        varchar(600) ENCODE zstd,
   string35                        varchar(600) ENCODE zstd,
   string36                        varchar(600) ENCODE zstd,
   string37                        varchar(600) ENCODE zstd,
   string38                        varchar(600) ENCODE zstd,
   string39                        varchar(600) ENCODE zstd,
   string40                        varchar(600) ENCODE zstd,
   string41                        varchar(600) ENCODE zstd,
   string42                        varchar(600) ENCODE zstd,
   string43                        varchar(600) ENCODE zstd,
   string44                        varchar(600) ENCODE zstd,
   string45                        varchar(600) ENCODE zstd,
   string46                        varchar(600) ENCODE zstd,
   string47                        varchar(600) ENCODE zstd,
   string48                        varchar(600) ENCODE zstd,
   string49                        varchar(600) ENCODE zstd,
   string50                        varchar(12000) ENCODE zstd,
   ebcampaignid                    integer ENCODE lzo,
   secampaignid                    integer ENCODE lzo references mec_us_trp.sizmek_search_campaigns(secampaignid),
   seaccountid                     varchar(1200) ENCODE zstd,
   seadgroupid                     integer ENCODE lzo,
   devicetypeid                    integer ENCODE zstd,
   winnerversionid                 integer ENCODE zstd,
   winnertargetaudienceid          integer ENCODE zstd,
   winnerdeliverygroupid           integer ENCODE zstd,
   isconversion                    boolean ENCODE zstd,
   mobiledevice                    varchar(100) ENCODE zstd,
   winnerpcp                       varchar(12000) ENCODE zstd,
   winnereventid                   varchar(108) ENCODE zstd,
   conversiondatedefaulttimezone   timestamp        NOT NULL,
   winnereventdatedefaulttimezone  timestamp ENCODE zstd,
   useridnumeric                   bigint           NOT NULL ENCODE zstd,
   md_file_date                    integer          NOT NULL ENCODE zstd,
   md_user_id_numeric              bigint           NOT NULL ENCODE zstd,
   acquiredtime                    timestamp  ENCODE zstd
)
diststyle even
;


