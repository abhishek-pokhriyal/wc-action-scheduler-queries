# Count the number of line items for some orders.
# -----------------------------------------------
# In the below example, I've used a sub-query to find out
# all the subscriptions that were created after a particular time.
# That sub-query can be modified however you want, keeping in mind that
# it's output should be a one column with multiple rows (each row being an order ID).

SELECT order_id,
       count(*)
FROM wp_woocommerce_order_items
WHERE order_id IN
    (SELECT ID
     FROM wp_posts
     WHERE post_type = 'shop_subscription'
       AND post_date_gmt > '2020-05-21 00:00:00')
  AND order_item_type = 'line_item'
GROUP BY order_id
ORDER BY order_id;
