# wc-action-scheduler-query
Queries for the WooCommerce Action Scheduler 3.0.


## WooCommerce Subscriptions

## Finding schedule for renewals

  ```sql
  SELECT
    `scheduled_date_local`, `args`
  FROM
    `wp_actionscheduler_actions`
  WHERE
    `status` = 'pending'  # Status: 'canceled', 'complete', 'failed', 'pending'
    AND `hook` = 'woocommerce_scheduled_subscription_payment'
    AND `scheduled_date_local` >= '2020-01-28 00:00:00'	# Start time
    AND `scheduled_date_local` < '2020-01-29 00:00:00'	# End time
  ORDER BY
    `scheduled_date_local`;
   ```
