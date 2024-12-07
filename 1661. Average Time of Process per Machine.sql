SELECT  a1.machine_id, Round(AVG(a2.timestamp-a1.timestamp),3) as processing_time
FROM Activity a1
Join Activity a2
on a1.process_id = a2.process_id 
and a1.machine_id = a2.machine_id
and a1.timestamp<a2.timestamp
GROUP BY a1.machine_id