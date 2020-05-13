# Find status-wise count of actions for a given hook.
# Below we are counting actions created by Follow-Up Emails,
# grouped by status.

SELECT status,
       count(*)
FROM wp_actionscheduler_actions
WHERE hook = 'sfn_followup_emails'
GROUP BY status
ORDER BY count(*) DESC;
