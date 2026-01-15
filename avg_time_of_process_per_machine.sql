
select 
a1.machine_id,
round(avg(a2.timestamp -a1.timestamp),3) as processing_time
from
activity as a1,
activity as a2
where a1.activity_type ="start"
and
a2.activity_type = "end"
and
a1.process_id =a2.process_id
and
a1.machine_id = a2.machine_id
group by machine_id