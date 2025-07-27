---- xample of differencies between tables (old - new)
SELECT 
        (SELECT COUNT(*) FROM `bigquery-public-data.stackoverflow.users`) AS total_legacy_users,
        (SELECT COUNT(*) FROM `bigquery-public-data.stackoverflow.users` WHERE reputation > 1) AS total_new_users,
        (
          (SELECT COUNT(*) FROM `bigquery-public-data.stackoverflow.users`) - 
          (SELECT COUNT(*) FROM `bigquery-public-data.stackoverflow.users` WHERE reputation > 1)) AS gap;

----

