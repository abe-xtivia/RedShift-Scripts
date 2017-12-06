CREATE TABLE mec_us_trp.sizmek_placements
(
   placementid                     bigint          NOT NULL ENCODE raw primary key,
   placementname                   varchar(1500) ENCODE zstd,
   packageid                       bigint          NOT NULL ENCODE raw,
   packagename                     varchar(300)    NOT NULL ENCODE zstd,
   isrealpackage                   boolean         NOT NULL ENCODE raw,
   campaignid                      bigint          NOT NULL ENCODE raw references mec_us_trp.sizmek_display_campaigns(campaignid),
   creationdate                    timestamp ENCODE raw,
   startdate                       timestamp       NOT NULL ENCODE raw,
   actualstartdate                 timestamp ENCODE raw,
   enddate                         timestamp       NOT NULL ENCODE raw,
   unitsize                        varchar(600)    NOT NULL ENCODE raw,
   siteid                          bigint          NOT NULL ENCODE raw references mec_us_trp.sizmek_sites(siteid),
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


