select
'TikTok Ads' as channel,
date as `date`,
sum(spend) as spend,
0 as engagements,
sum(conversions) as total_conversions,
sum(impressions) as impressions,
sum(clicks) as clicks
from {{ ref('src_ads_tiktok_ads_all_data')}}
group by channel, `date`
