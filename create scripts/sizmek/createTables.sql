CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_accounts
(
   accountid        integer        NOT NULL ENCODE raw primary key,
   accountname      varchar(300)   NOT NULL ENCODE raw,
   defaulttimezone  integer        NOT NULL ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_ad_groups
(
   adgroupid         bigint          NOT NULL ENCODE raw primary key,
   searchcampaignid  bigint          NOT NULL ENCODE raw,
   seadgroupid       bigint ENCODE raw,
   adgroupname       varchar(1200)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_advertisers
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

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_brands
(
   brandid       bigint         NOT NULL ENCODE raw primary key,
   brandname     varchar(600)   NOT NULL ENCODE raw,
   advertiserid  bigint         NOT NULL ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_browser_type
(
   browserid       bigint         NOT NULL ENCODE raw primary key,
   browsername     varchar(384)   NOT NULL ENCODE raw,
   browserversion  varchar(192) ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_city
(
   cityid    bigint         NOT NULL ENCODE zstd primary key,
   cityname  varchar(150)   NOT NULL ENCODE zstd
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_conversions_tags
(
   conversiontagid       bigint          NOT NULL ENCODE raw primary key,
   conversionname        varchar(300)    NOT NULL ENCODE raw,
   advertiserid          bigint          NOT NULL ENCODE raw references mec_us_trp_new.sizmek_advertisers(advertiserid),
   type                  varchar(150)    NOT NULL ENCODE raw,
   pageurl               varchar(6000) ENCODE raw,
   creationdate          timestamp ENCODE raw,
   group1                varchar(600) ENCODE raw,
   group2                varchar(600) ENCODE raw,
   group3                varchar(600) ENCODE raw,
   group4                varchar(600) ENCODE raw,
   group5                varchar(600) ENCODE raw,
   string1               varchar(300) ENCODE raw,
   string2               varchar(300) ENCODE raw,
   string3               varchar(300) ENCODE raw,
   string4               varchar(300) ENCODE raw,
   string5               varchar(300) ENCODE raw,
   string6               varchar(300) ENCODE raw,
   string7               varchar(300) ENCODE raw,
   string8               varchar(300) ENCODE raw,
   string9               varchar(300) ENCODE raw,
   string10              varchar(300) ENCODE raw,
   string11              varchar(300) ENCODE raw,
   string12              varchar(300) ENCODE raw,
   string13              varchar(300) ENCODE raw,
   string14              varchar(300) ENCODE raw,
   string15              varchar(300) ENCODE raw,
   string16              varchar(300) ENCODE raw,
   string17              varchar(300) ENCODE raw,
   string18              varchar(300) ENCODE raw,
   string19              varchar(300) ENCODE raw,
   string20              varchar(300) ENCODE raw,
   string21              varchar(300) ENCODE raw,
   string22              varchar(300) ENCODE raw,
   string23              varchar(300) ENCODE raw,
   string24              varchar(300) ENCODE raw,
   string25              varchar(300) ENCODE raw,
   string26              varchar(300) ENCODE raw,
   string27              varchar(300) ENCODE raw,
   string28              varchar(300) ENCODE raw,
   string29              varchar(300) ENCODE raw,
   string30              varchar(300) ENCODE raw,
   string31              varchar(300) ENCODE raw,
   string32              varchar(300) ENCODE raw,
   string33              varchar(300) ENCODE raw,
   string34              varchar(300) ENCODE raw,
   string35              varchar(300) ENCODE raw,
   string36              varchar(300) ENCODE raw,
   string37              varchar(300) ENCODE raw,
   string38              varchar(300) ENCODE raw,
   string39              varchar(300) ENCODE raw,
   string40              varchar(300) ENCODE raw,
   string41              varchar(300) ENCODE raw,
   string42              varchar(300) ENCODE raw,
   string43              varchar(300) ENCODE raw,
   string44              varchar(300) ENCODE raw,
   string45              varchar(300) ENCODE raw,
   string46              varchar(300) ENCODE raw,
   string47              varchar(300) ENCODE raw,
   string48              varchar(300) ENCODE raw,
   string49              varchar(300) ENCODE raw,
   creationdate_localtz  timestamp ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_country
(
   countryid    bigint         NOT NULL ENCODE raw primary key,
   countryname  varchar(150)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_currency
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

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_device_type
(
   devicetypeid    bigint         NOT NULL ENCODE raw primary key,
   devicetypename  varchar(150)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_display_campaigns
(
   campaignid             bigint         NOT NULL ENCODE raw primary key,
   campaignname           varchar(900)   NOT NULL ENCODE raw,
   brandid                bigint         NOT NULL ENCODE raw references mec_us_trp_new.sizmek_brands(brandid),
   creationdate           timestamp ENCODE raw,
   startdate              timestamp ENCODE raw,
   enddate                timestamp ENCODE raw,
   segmentationtype       varchar(150) ENCODE raw,
   defaulttargetaudience  varchar(150) ENCODE raw,
   mastercampaignid       integer ENCODE raw,
   creationdate_localtz   timestamp ENCODE raw,
   startdate_localtz      timestamp ENCODE raw,
   enddate_localtz        timestamp ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_dma
(
   dmacode  bigint         NOT NULL ENCODE raw primary key,
   dmaname  varchar(150)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_event_type_rich
(
   eventtypeid    bigint         NOT NULL ENCODE raw primary key,
   eventtypename  varchar(192)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_event_type_standard
(
   eventtypeid    bigint         NOT NULL ENCODE raw primary key,
   eventtypename  varchar(192)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_interactions
(
   interactionid      varchar(600)   NOT NULL ENCODE zstd primary key,
   interactionname    varchar(600)   NOT NULL ENCODE zstd,
   interactiontype    varchar(30)    NOT NULL ENCODE raw,
   custominteraction  varchar(30)    NOT NULL ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_keywords
(
   sekeywordid     bigint          NOT NULL ENCODE raw primary key,
   keywordname     varchar(1200)   NOT NULL ENCODE raw,
   adgroupid       bigint          NOT NULL ENCODE raw,
   keywordid       bigint          NOT NULL ENCODE raw,
   position        float8          NOT NULL ENCODE raw,
   matchtype       varchar(600) ENCODE raw,
   destinationurl  varchar(6000) ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_master_campaigns
(
   mastercampaignid      bigint         NOT NULL ENCODE raw primary key,
   mastercampaignname    varchar(900)   NOT NULL ENCODE raw,
   brandid               bigint         NOT NULL ENCODE raw,
   creationdate          timestamp ENCODE raw,
   segmentationtype      varchar(150) ENCODE raw,
   creationdate_localtz  timestamp ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_media_buy_channel
(
   channelid    bigint         NOT NULL ENCODE raw primary key,
   channelname  varchar(300)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_operating_system
(
   osid          bigint         NOT NULL ENCODE raw primary key,
   osname        varchar(384)   NOT NULL ENCODE raw,
   osversion     varchar(192) ENCODE raw,
   devicetypeid  bigint         NOT NULL ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_panel_names
(
   panelname   varchar(600)   NOT NULL ENCODE raw,
   panelid     bigint         NOT NULL ENCODE raw primary key,
   adid        bigint         NOT NULL ENCODE raw,
   autoexpand  varchar(30)    NOT NULL ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_period_names
(
   periodid                 bigint         NOT NULL ENCODE raw primary key,
   periodname               varchar(600)   NOT NULL ENCODE raw,
   packageid                bigint         NOT NULL ENCODE raw,
   periodstartdate          timestamp      NOT NULL ENCODE raw,
   periodenddate            timestamp      NOT NULL ENCODE raw,
   periodstartdate_localtz  timestamp ENCODE raw,
   periodenddate_localtz    timestamp ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_sites
(
   siteid    bigint         NOT NULL ENCODE raw primary key,
   sitename  varchar(300)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_placements
(
   placementid                     bigint          NOT NULL ENCODE raw primary key,
   placementname                   varchar(1500) ENCODE zstd,
   packageid                       bigint          NOT NULL ENCODE raw,
   packagename                     varchar(300)    NOT NULL ENCODE zstd,
   isrealpackage                   boolean         NOT NULL ENCODE raw,
   campaignid                      bigint          NOT NULL ENCODE raw references mec_us_trp_new.sizmek_display_campaigns(campaignid),
   creationdate                    timestamp ENCODE raw,
   startdate                       timestamp       NOT NULL ENCODE raw,
   actualstartdate                 timestamp ENCODE raw,
   enddate                         timestamp       NOT NULL ENCODE raw,
   unitsize                        varchar(600)    NOT NULL ENCODE raw,
   siteid                          bigint          NOT NULL ENCODE raw references mec_us_trp_new.sizmek_sites(siteid),
   bookedimpressions               bigint ENCODE raw,
   costmodel                       varchar(150) ENCODE raw,
   roimetric                       varchar(150) ENCODE raw,
   roimetricconversionid           bigint ENCODE raw,
   roimetriccustominteractionid    varchar(600) ENCODE raw,
   costperunit                     float8 ENCODE raw,
   orderedunits                    bigint ENCODE raw,
   valueperaction                  float8 ENCODE raw,
   targetaudience                  varchar(150) ENCODE raw,
   classification1                 varchar(600) ENCODE raw,
   classification2                 varchar(600) ENCODE raw,
   classification3                 varchar(600) ENCODE raw,
   classification4                 varchar(600) ENCODE raw,
   classification5                 varchar(600) ENCODE raw,
   costcappingcalculation          boolean ENCODE raw,
   sectionname                     varchar(750) ENCODE raw,
   ignoreoverdelivery              boolean ENCODE raw,
   specialtraffickinginstructions  varchar(3000) ENCODE zstd,
   mediabuychannel                 varchar(150) ENCODE raw,
   creationdate_localtz            timestamp ENCODE raw,
   startdate_localtz               timestamp ENCODE raw,
   actualstartdate_localtz         timestamp ENCODE raw,
   enddate_localtz                 timestamp ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_product
(
   productid    bigint         NOT NULL ENCODE zstd primary key,
   productname  varchar(600)   NOT NULL ENCODE zstd
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_search
(
   semid                            bigint          NOT NULL ENCODE zstd,
   uniqueid                         varchar(600)    NOT NULL ENCODE zstd primary key,
   publisherid                      bigint ENCODE zstd,
   publishertypeid                  bigint ENCODE zstd,
   accountid                        varchar(600) ENCODE zstd references mec_us_trp_new.sizmek_accounts(accountid),
   accountname                      varchar(600) ENCODE zstd,
   accountstatus                    varchar(60) ENCODE zstd,
   currencyisocode                  varchar(9) ENCODE zstd,
   campaignid                       bigint ENCODE zstd references mec_us_trp_new.sizmek_display_campaigns(campaignid),
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
   advertiserid                     bigint ENCODE zstd references mec_us_trp_new.sizmek_advertisers(advertiserid),
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

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_search_accounts
(
   seaccountid          varchar(1200)   NOT NULL ENCODE raw primary key,
   seaccountname        varchar(1200)   NOT NULL ENCODE raw,
   ebsearchaccountid    bigint          NOT NULL ENCODE raw,
   ebsearchaccountname  varchar(300)    NOT NULL ENCODE raw,
   advertiserid         bigint          NOT NULL ENCODE raw references mec_us_trp_new.sizmek_advertisers(advertiserid),
   searchenginename     varchar(600)    NOT NULL ENCODE raw,
   status               varchar(150) ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_search_ads
(
   eyeblasteradid  bigint          NOT NULL ENCODE raw,
   seadid          bigint          NOT NULL ENCODE raw primary key,
   adgroupid       bigint          NOT NULL ENCODE raw,
   destinationurl  varchar(6000) ENCODE raw,
   adtitle         varchar(1500) ENCODE raw,
   adtext          varchar(1500) ENCODE raw,
   addisplayurl    varchar(1500) ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_search_campaigns
(
   ebcampaignid       bigint          NOT NULL ENCODE raw,
   secampaignid       bigint          NOT NULL ENCODE raw primary key,
   secampaignname     varchar(900)    NOT NULL ENCODE raw,
   seaccountid        varchar(1200) ENCODE raw,
   startdate          timestamp ENCODE raw,
   enddate            timestamp ENCODE raw,
   status             varchar(150) ENCODE raw,
   startdate_localtz  timestamp ENCODE raw,
   enddate_localtz    timestamp ENCODE raw
);

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_state
(
   stateid    bigint         NOT NULL ENCODE raw primary key,
   statename  varchar(150)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_target_audience
(
   targetaudienceid    bigint         NOT NULL ENCODE raw primary key,
   targetaudiencename  varchar(600)   NOT NULL ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_video_names
(
   videoassetname  varchar(600)   NOT NULL ENCODE zstd,
   assetid         bigint         NOT NULL ENCODE raw primary key,
   videoduration   integer ENCODE raw,
   videobitrate    integer ENCODE raw,
   videofiletype   varchar(30) ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_ads
(
   adid                  bigint          NOT NULL ENCODE raw primary key,
   adname                varchar(900)    NOT NULL ENCODE zstd,
   placementid           bigint          NOT NULL ENCODE raw references mec_us_trp_new.sizmek_placements(placementid),
   description           varchar(3000) ENCODE raw,
   creationdate          timestamp       NOT NULL ENCODE raw,
   clickthroughurl       varchar(6000) ENCODE zstd,
   adformat              varchar(300)    NOT NULL ENCODE zstd,
   status                varchar(150)    NOT NULL ENCODE raw,
   classification1       varchar(300) ENCODE raw,
   classification2       varchar(300) ENCODE raw,
   classification3       varchar(300) ENCODE raw,
   classification4       varchar(300) ENCODE raw,
   classification5       varchar(300) ENCODE raw,
   smartversionad        bigint          NOT NULL ENCODE raw,
   smartversiongroup     varchar(1200) ENCODE raw,
   adsizeinkb            integer ENCODE raw,
   creationdate_localtz  timestamp ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_conversion_events
(
   userid                          varchar(108)     NOT NULL ENCODE zstd,
   conversionid                    varchar(108)     NOT NULL ENCODE zstd primary key,
   conversiondate                  timestamp        NOT NULL ENCODE zstd,
   conversiontagid                 integer          NOT NULL ENCODE zstd,
   advertiserid                    integer          NOT NULL ENCODE zstd references mec_us_trp_new.sizmek_advertisers(advertiserid),
   accountid                       integer          NOT NULL ENCODE zstd references mec_us_trp_new.sizmek_accounts(accountid),
   revenue                         float8 ENCODE zstd,
   currency                        integer ENCODE zstd,
   quantity                        integer ENCODE zstd,
   orderid                         varchar(50) ENCODE zstd,
   referrer                        varchar(12000) ENCODE zstd,
   productid                       varchar(300) ENCODE zstd references mec_us_trp_new.sizmek_product(productid),
   productinfo                     varchar(600) ENCODE zstd,
   winnerentityid                  integer ENCODE zstd,
   winnersemid                     integer ENCODE zstd,
   winnerseuniqueid                varchar(108) ENCODE zstd,
   eventtypeid                     integer ENCODE zstd,
   winnereventdate                 timestamp ENCODE zstd,
   placementid                     integer ENCODE zstd references mec_us_trp_new.sizmek_placements(placementid),
   siteid                          integer ENCODE zstd references mec_us_trp_new.sizmek_sites(siteid),
   campaignid                      integer ENCODE zstd references mec_us_trp_new.sizmek_display_campaigns(campaignid),
   adgroupid                       integer ENCODE lzo,
   brandid                         integer ENCODE zstd,
   countryid                       integer ENCODE zstd references mec_us_trp_new.sizmek_country(countryid),
   stateid                         integer ENCODE zstd references mec_us_trp_new.sizmek_state(stateid),
   dmaid                           integer ENCODE bytedict references mec_us_trp_new.sizmek_dma(dmacode),
   cityid                          integer ENCODE zstd references mec_us_trp_new.sizmek_city(cityid),
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
   secampaignid                    integer ENCODE lzo references mec_us_trp_new.sizmek_search_campaigns(secampaignid),
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
   conversiondatedefaulttimezone   timestamp        NOT NULL ENCODE zstd,
   winnereventdatedefaulttimezone  timestamp ENCODE zstd,
   useridnumeric                   bigint           NOT NULL ENCODE zstd,
   md_file_date                    integer          NOT NULL ENCODE zstd,
   md_user_id_numeric              bigint           NOT NULL ENCODE zstd,
   acquiredtime                    timestamp  ENCODE zstd
)
distkey(conversiondatedefaulttimezone)
interleaved sortkey(conversiondatedefaulttimezone, eventtypeid, winnerentityid)
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_rich_events
(
   eventid                         varchar(108)    NOT NULL ENCODE zstd,
   userid                          varchar(108)    NOT NULL ENCODE zstd,
   eventtypeid                     integer         NOT NULL ENCODE zstd references mec_us_trp_new.sizmek_event_type_rich(eventtypeid),
   interactionid                   varchar(600)    NOT NULL ENCODE zstd,
   interactionduration             integer ENCODE zstd,
   videoassetid                    integer ENCODE zstd references mec_us_trp_new.sizmek_video_names(assetid),
   interactiondate                 timestamp       NOT NULL ENCODE zstd,
   entityid                        integer         NOT NULL ENCODE zstd,
   placementid                     integer         NOT NULL ENCODE zstd,
   siteid                          integer         NOT NULL ENCODE zstd references mec_us_trp_new.sizmek_sites(siteid),
   campaignid                      integer         NOT NULL ENCODE zstd references mec_us_trp_new.sizmek_display_campaigns(campaignid),
   brandid                         integer         NOT NULL ENCODE zstd references mec_us_trp_new.sizmek_brands(brandid),
   advertiserid                    integer         NOT NULL ENCODE zstd references mec_us_trp_new.sizmek_advertisers(advertiserid),
   accountid                       integer         NOT NULL ENCODE zstd references mec_us_trp_new.sizmek_accounts(accountid),
   pcp                             varchar(6144) ENCODE zstd,
   mobiledevice                    varchar(100) ENCODE zstd,
   mobilecarrier                   varchar(100) ENCODE zstd,
   versionid                       integer ENCODE zstd,
   audienceid                      integer ENCODE zstd,
   deliverygroupid                 integer ENCODE zstd,
   referrer                        varchar(6144) ENCODE zstd,
   impressionexchangetoken         varchar(50) ENCODE zstd,
   interactiondatedefaulttimezone  timestamp       NOT NULL ENCODE zstd,
   useridnumeric                   bigint          NOT NULL ENCODE zstd,
   md_file_date                    integer         NOT NULL ENCODE zstd,
   md_user_id_numeric              bigint          NOT NULL ENCODE raw,
   acquiredtime                    timestamp ENCODE zstd
)
distkey(interactiondatedefaulttimezone)
interleaved sortkey(interactiondatedefaulttimezone, eventtypeid, advertiserid)
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_site_visit_events
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
   sitevisittimedefaulttimezone  timestamp ENCODE zstd,
   useridnumeric                 bigint ENCODE zstd,
   accountid                     integer ENCODE zstd references mec_us_trp_new.sizmek_accounts(accountid),
   md_file_date                  integer ENCODE zstd,
   md_user_id_numeric            bigint ENCODE zstd,
   acquiredtime                  timestamp ENCODE zstd
)
distkey(sitevisittimedefaulttimezone)
sortkey(sitevisittimedefaulttimezone)
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_standard_events
(
   eventid                   varchar(108)     NOT NULL ENCODE zstd,
   userid                    varchar(108)     NOT NULL ENCODE zstd,
   eventtypeid               integer          NOT NULL ENCODE zstd references mec_us_trp_new.sizmek_event_type_standard(eventtypeid),
   eventdate                 timestamp        NOT NULL ENCODE zstd,
   entityid                  integer          NOT NULL ENCODE zstd,
   semid                     integer ENCODE lzo,
   seuniqueid                varchar(108) ENCODE zstd references mec_us_trp_new.sizmek_search(uniqueid),
   placementid               integer ENCODE zstd,
   siteid                    integer ENCODE zstd,
   campaignid                integer          NOT NULL ENCODE zstd references mec_us_trp_new.sizmek_display_campaigns(campaignid),
   brandid                   integer          NOT NULL ENCODE zstd references mec_us_trp_new.sizmek_brands(brandid),
   advertiserid              integer          NOT NULL ENCODE zstd references mec_us_trp_new.sizmek_advertisers(advertiserid),
   accountid                 integer          NOT NULL ENCODE zstd references mec_us_trp_new.sizmek_accounts(accountid),
   searchadid                integer ENCODE lzo,
   adgroupid                 integer ENCODE lzo,
   countryid                 integer ENCODE zstd references mec_us_trp_new.sizmek_country(countryid),
   stateid                   integer ENCODE zstd references mec_us_trp_new.sizmek_state(stateid),
   dmaid                     integer ENCODE bytedict references mec_us_trp_new.sizmek_dma(dmacode),
   zipcode                   varchar(32) ENCODE zstd,
   areacode                  varchar(32) ENCODE zstd,
   browsercode               integer ENCODE zstd,
   oscode                    integer ENCODE zstd,
   referrer                  varchar(12000) ENCODE zstd,
   mobiledevice              varchar(100) ENCODE zstd,
   mobilecarrier             varchar(100) ENCODE zstd,
   audienceid                integer ENCODE zstd,
   productid                 integer ENCODE zstd,
   cityid                    integer ENCODE zstd,
   pcp                       varchar(6144) ENCODE zstd,
   ebcampaignid              integer ENCODE lzo,
   secampaignid              integer ENCODE lzo references mec_us_trp_new.sizmek_search_campaigns(secampaignid),
   seaccountid               varchar(1200) ENCODE zstd,
   seadgroupid               integer ENCODE lzo,
   versions                  varchar(6144) ENCODE zstd,
   deliverygroupid           integer ENCODE zstd,
   price                     integer ENCODE lzo,
   exchangeid                integer ENCODE lzo,
   bidid                     integer ENCODE lzo,
   strategyid                integer ENCODE lzo,
   impressiontypeid          integer ENCODE lzo,
   impressionexchangetoken   varchar(150) ENCODE zstd,
   buyid                     integer ENCODE lzo,
   inventorysource           varchar(100) ENCODE zstd,
   dsp_id                    varchar(100) ENCODE zstd,
   eventdatedefaulttimezone  timestamp        NOT NULL ENCODE zstd,
   useridnumeric             bigint           NOT NULL ENCODE zstd,
   md_file_date              integer          NOT NULL ENCODE zstd,
   md_user_id_numeric        bigint           NOT NULL ENCODE raw,
   acquiredtime              timestamp ENCODE zstd
)
distkey(eventdatedefaulttimezone)
INTERLEAVED SORTKEY(eventdatedefaulttimezone, eventtypeid, advertiserid)
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_keywords
(
   sekeywordid     bigint          NOT NULL ENCODE raw primary key,
   keywordname     varchar(1200)   NOT NULL ENCODE raw,
   adgroupid       bigint          NOT NULL ENCODE raw,
   keywordid       bigint          NOT NULL ENCODE raw,
   position        float8          NOT NULL ENCODE raw,
   matchtype       varchar(600) ENCODE raw,
   destinationurl  varchar(6000) ENCODE raw
)
DISTSTYLE ALL
;

CREATE TABLE IF NOT EXISTS mec_us_trp_new.sizmek_master_campaigns
(
   mastercampaignid      bigint         NOT NULL ENCODE raw primary key,
   mastercampaignname    varchar(900)   NOT NULL ENCODE raw,
   brandid               bigint         NOT NULL ENCODE raw,
   creationdate          timestamp ENCODE raw,
   segmentationtype      varchar(150) ENCODE raw,
   creationdate_localtz  timestamp ENCODE raw
)
DISTSTYLE ALL
;