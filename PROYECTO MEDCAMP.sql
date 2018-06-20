select * from Camp_Detail

select * from Patient_Profile

select * from train
order by Patient_ID

select Donation, min(Health_Score), MAX(Health_Score) from First_Camp
group by Donation
order by Donation

select * from Second_Camp

select * from Third_Camp

select * from test

select a.Patient_ID,
	   case when b.Patient_ID is not null then 1 else 0 end camp01,
	   case when c.Patient_ID is not null then 1 else 0 end camp02,
	   case when d.Patient_ID is not null then 1 else 0 end camp03
	   --into jh_temp_cli
from Patient_Profile a 
 left join First_Camp b on a.Patient_ID = b.Patient_ID
 left join Second_Camp c on a.Patient_ID = c.Patient_ID
 left join Third_Camp d on a.Patient_ID = d.Patient_ID
where a.Patient_ID = 511271


select patient_id, count(1) from  First_Camp
group by patient_id
having count(1)>1

select distinct Health_Camp_ID from First_Camp -- 31
select distinct Health_Camp_ID from Second_Camp -- 4
select distinct Health_Camp_ID from Third_Camp -- 2

select * from First_Camp where Patient_ID = 503827

select * from Second_Camp where Patient_ID = 503827

select * from Third_Camp where Patient_ID = 503827



 select Patient_ID,
		camp01 + camp02 + camp03 campt
		into jh_temp_cli01
 from jh_temp_cli

 select * from jh_temp_cli01

