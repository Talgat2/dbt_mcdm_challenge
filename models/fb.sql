select
'Facebook' as channel,
date as `date`,
sum(spend) as spend,
sum(views+likes+shares+comments+add_to_cart+mobile_app_install+complete_registration+inline_link_clicks) as engagements,
sum(purchase) as total_conversions,
sum(impressions) as impressions,
sum(clicks) as clicks
from {{ ref('src_ads_creative_facebook_all_data')}}
group by channel, `date`
