SELECT
	DISTINCT `status`
FROM
	`wp_actionscheduler_actions`;


SELECT
	now(), `scheduled_date_gmt`, `scheduled_date_local`, `args`
FROM
	`wp_actionscheduler_actions`
WHERE
	`status` = 'pending'
	AND `hook` = 'woocommerce_scheduled_subscription_payment'
	AND `scheduled_date_gmt` >= '2020-01-28 00:00:00'	# Start time
	AND `scheduled_date_gmt` < '2020-01-29 00:00:00'	# End time
ORDER BY
	`scheduled_date_gmt`;
	
	
SELECT
	*
FROM
	`wp_postmeta`
WHERE
	`post_id` = 870046
	AND `meta_key` = '_schedule_next_payment';


/* update wp_postmeta
set meta_value = '2020-01-28 14:00:00' */
select *
from wp_postmeta
where
	post_id in (870046, 815464, 868805, 815959, 816009, 868078, 868150, 868186)
	and meta_key = '_schedule_next_payment';
