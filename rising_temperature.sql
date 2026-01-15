SELECT today.id
FROM Weather as  today
JOIN Weather as yesterday 
  ON DATEDIFF(today.recordDate, yesterday.recordDate) = 1
WHERE today.temperature > yesterday.temperature;