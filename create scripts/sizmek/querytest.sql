--Old 3.78s
--New
SELECT
DATE(a.EventDateDefaultTImeZone) as Date , COUNT(*)
as TotalImpressions
FROM mec_us_trp.sizmek_standard_events as a
WHERE DATE(a.EventDateDefaultTImeZone) between '2017-11-01' and '2017-11-30'
AND EventTypeID = 1
--and advertiserid = XXXX
group by DATE(a.EventDateDefaultTImeZone) order by 1;

--Old 1.96s
--New
SELECT DATE(a.EventDateDefaultTImeZone) as Date , COUNT(*) as TotalClicks
FROM mec_us_trp.sizmek_standard_events as a
WHERE DATE(a.EventDateDefaultTImeZone) between '2017-11-01' and '2017-11-30'
AND EventTypeID = 2
--and advertiserid = XXXX
group by DATE(a.EventDateDefaultTImeZone) order by 1;

--Old .52s
--New
SELECT DATE(a.ConversionDateDefaultTImeZone) as Date, b.conversionname, COUNT(*) as TotalConversions
FROM mec_us_trp.sizmek_conversion_events as a
INNER JOIN mec_us_trp.Sizmek_conversions_tags as b
ON a.conversiontagid=b.conversiontagid
AND DATE(a.ConversionDateDefaultTImeZone) between '2017-11-01' and '2017-11-30'
AND EventTypeID IN (1,2) and WinnerEntityID is not NULL
AND IsConversion = true
--and advertiserid = XXXX
GROUP BY DATE(a.ConversionDateDefaultTImeZone), b.conversionname
Order by 1;

--Old 7.11s
--New
SELECT DATE(a.EventDateDefaultTImeZone) as Date , a.AdvertiserID, a.CampaignID, COUNT(*) as TotalImpressions
FROM mec_us_trp.sizmek_standard_events as a
INNER JOIN mec_us_trp.sizmek_display_campaigns as b
ON a.CampaignID=b.CampaignID
WHERE DATE(a.EventDateDefaultTImeZone) between '2017-11-01' and '2017-11-30'
AND a.EventTypeID = 1
--and a.AdvertiserID = XXXX
group by 1,2,3 order by 1;

--Old 2.72s
--New
SELECT DATE(a.EventDateDefaultTImeZone) as Date , a.AdvertiserID, a.CampaignID, COUNT(*) as TotalImpressions
FROM mec_us_trp.sizmek_standard_events as a
INNER JOIN mec_us_trp.sizmek_display_campaigns as b
ON a.CampaignID=b.CampaignID
WHERE DATE(a.EventDateDefaultTImeZone) between '2017-11-01' and '2017-11-30'
AND a.EventTypeID = 2
--and a.AdvertiserID = XXXX
group by 1,2,3 order by 1;

--Old .92s
--New
SELECT DATE(a.ConversionDateDefaultTImeZone) as Date, a.CampaignID, b.conversionname, b.conversiontagid, COUNT(*) as TotalConversions
FROM mec_us_trp.sizmek_conversion_events as a
INNER JOIN mec_us_trp.Sizmek_conversions_tags as b
ON a.conversiontagid=b.conversiontagid
INNER JOIN mec_us_trp.sizmek_display_campaigns as c
ON a.CampaignID=c.CampaignID
AND DATE(a.ConversionDateDefaultTImeZone) between '2017-11-01' and '2017-11-30'
AND EventTypeID IN (1,2)
and WinnerEntityID is not NULL
AND IsConversion = true
--AND a.AdvertiserID = XXXX
GROUP BY 1,2,3,4
Order by 1;

--Old 10.1s
--New
SELECT DATE(a.EventDateDefaultTImeZone) as Date , b.AdvertiserID, b.AdvertiserName, COUNT(*) as TotalImpressions
FROM mec_us_trp.sizmek_standard_events as a
INNER JOIN mec_us_trp.sizmek_advertisers b
ON a.AdvertiserID=b.AdvertiserID
AND DATE(a.EventDateDefaultTImeZone) between '2017-11-01' and '2017-11-30'
AND EventTypeID = 1
--and advertiserid = XXXX
group by 1,2,3
order by 1;