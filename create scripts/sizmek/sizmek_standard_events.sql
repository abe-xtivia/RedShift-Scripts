CREATE TABLE mec_us_trp.sizmek_standard_events
(
   eventid                   varchar(108)     NOT NULL ENCODE zstd,
   userid                    varchar(108)     NOT NULL ENCODE zstd,
   eventtypeid               integer          NOT NULL references mec_us_trp.sizmek_event_type_standard(eventtypeid),
   eventdate                 timestamp        NOT NULL ENCODE zstd,
   entityid                  integer          NOT NULL ENCODE zstd,
   semid                     integer ENCODE lzo,
   seuniqueid                varchar(108) ENCODE zstd references mec_us_trp.sizmek_search(uniqueid),
   placementid               integer ENCODE zstd,
   siteid                    integer ENCODE zstd,
   campaignid                integer          NOT NULL ENCODE zstd references mec_us_trp.sizmek_display_campaigns(campaignid),
   brandid                   integer          NOT NULL ENCODE zstd references mec_us_trp.sizmek_brands(brandid),
   advertiserid              integer          NOT NULL ENCODE zstd references mec_us_trp.sizmek_advertisers(advertiserid),
   accountid                 integer          NOT NULL references mec_us_trp.sizmek_accounts(accountid),
   searchadid                integer ENCODE lzo,
   adgroupid                 integer ENCODE lzo,
   countryid                 integer ENCODE zstd references mec_us_trp.sizmek_country(countryid),
   stateid                   integer ENCODE zstd references mec_us_trp.sizmek_state(stateid),
   dmaid                     integer ENCODE bytedict references mec_us_trp.sizmek_dma(dmacode),
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
   secampaignid              integer ENCODE lzo references mec_us_trp.sizmek_search_campaigns(secampaignid),
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
   eventdatedefaulttimezone  timestamp        NOT NULL,
   useridnumeric             bigint           NOT NULL ENCODE zstd,
   md_file_date              integer          NOT NULL ENCODE zstd,
   md_user_id_numeric        bigint           NOT NULL ENCODE raw,
   acquiredtime              timestamp ENCODE zstd
)
diststyle even
;


