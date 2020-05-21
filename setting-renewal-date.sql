# Testing
SELECT meta_value
FROM wp_postmeta
WHERE post_id IN (940765,
                  940763,
                  940761,
                  940759,
                  940757,
                  940755,
                  940753,
                  940750,
                  940741,
                  940732,
                  940729,
                  940718,
                  940713,
                  940522,
                  940519,
                  940511)
  AND meta_key = '_schedule_next_payment'
ORDER BY meta_value;

# Update query
UPDATE wp_postmeta
SET meta_value = '2020-05-21 12:00:00'
WHERE post_id IN (940765,
                  940763,
                  940761,
                  940759,
                  940757,
                  940755,
                  940753,
                  940750,
                  940741,
                  940732,
                  940729,
                  940718,
                  940713,
                  940522,
                  940519,
                  940511)
  AND meta_key = '_schedule_next_payment'
ORDER BY meta_value;

# --------------------------------------------------------------------------------


# Testing
SELECT scheduled_date_local,
       scheduled_date_gmt
FROM wp_actionscheduler_actions
WHERE (args LIKE '%940765%'
       OR args LIKE '%940763%'
       OR args LIKE '%940761%'
       OR args LIKE '%940759%'
       OR args LIKE '%940757%'
       OR args LIKE '%940755%'
       OR args LIKE '%940753%'
       OR args LIKE '%940750%'
       OR args LIKE '%940741%'
       OR args LIKE '%940732%'
       OR args LIKE '%940729%'
       OR args LIKE '%940718%'
       OR args LIKE '%940713%'
       OR args LIKE '%940522%'
       OR args LIKE '%940519%'
       OR args LIKE '%940511%')
  AND status = 'pending'
ORDER BY scheduled_date_gmt;


# Update query
UPDATE wp_actionscheduler_actions
SET scheduled_date_local = '2020-05-21 07:00:00',
       scheduled_date_gmt = '2020-05-21 12:00:00'
WHERE (args LIKE '%940765%'
       OR args LIKE '%940763%'
       OR args LIKE '%940761%'
       OR args LIKE '%940759%'
       OR args LIKE '%940757%'
       OR args LIKE '%940755%'
       OR args LIKE '%940753%'
       OR args LIKE '%940750%'
       OR args LIKE '%940741%'
       OR args LIKE '%940732%'
       OR args LIKE '%940729%'
       OR args LIKE '%940718%'
       OR args LIKE '%940713%'
       OR args LIKE '%940522%'
       OR args LIKE '%940519%'
       OR args LIKE '%940511%')
  AND status = 'pending'
ORDER BY scheduled_date_gmt;
