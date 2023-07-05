select
'Bing' as channel,
date as `date`,
sum(spend) as spend,
0 as engagements,
sum(conv) as total_conversions,
sum(imps) as impressions,
sum(clicks) as clicks
from {{ ref('src_ads_bing_all_data')}}
group by channel, `date`
