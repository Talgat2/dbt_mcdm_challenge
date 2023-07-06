select
'Twitter' as channel,
date as `date`,
sum(spend) as spend,
sum(engagements) as engagements,
0 as total_conversions,
sum(impressions) as impressions,
sum(clicks) as clicks
from {{ ref('src_promoted_tweets_twitter_all_data')}}
group by channel, `date`
