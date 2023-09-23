WITH ads_basic AS (
SELECT
	fabd.ad_date,
	fc.campaign_name,
	'facebook' ads,
	fabd.spend,
	fabd.impressions,
	fabd.reach,
	fabd.clicks,
	fabd.leads,
	fabd.value
FROM
	facebook_ads_basic_daily fabd
JOIN 
	facebook_campaign fc ON fabd.campaign_id = fc.campaign_id
UNION
SELECT
	ad_date,
	campaign_name,
	'google' ads,
	spend,
	impressions,
	reach,
	clicks,
	leads,
	value
FROM
	public.google_ads_basic_daily
)

SELECT 
	ad_date,
	campaign_name,
	sum(spend) spend,
	sum(impressions) impressions,
	sum(clicks) clicks,
	sum(value) value
FROM 
	ads_basic
GROUP BY 
	ad_date,
	campaign_name
ORDER BY 
	ad_date 