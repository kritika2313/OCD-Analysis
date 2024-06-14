
/*create table ocd_patient(Patient_ID  int,
						 Age int,
						 Gender Varchar(20),
						Ethnicity varchar(20),
						 Marital_Status varchar(30),
						Education varchar(30),
						 OCD_Diagnosis date,
						Duration_of_Symptoms int,
						 Previous_Diagnosis varchar(20),
						Family_history_of_OCD varchar(30),
						 Obsession_Type varchar(20),
						 Compultion_type varchar(20),
						Obsession_score int,
						Compulsions_score int,
						 Depression_Diagnosis varchar(20),
						 Anxiety_Diagnosis varchar(30),
						 Medications varchar(20)
						);*/
						
Select * from ocd_patient;


-----1. Count no of M and F have ocd and avg obsession score by gender.-----------
select gender,count(Patient_ID) as Patient_count,round(avg(obsession_score),2)as Average_Obsession_Score
from ocd_patient group by 1 order by 2;

-----2.count and avg of obsession score by ethnicities that have ocd.------------
select ethnicity,count(Patient_ID) as patient_count,round(avg(obsession_score),2) as Average_Obsession_Score
from ocd_patient group by ethnicity order by 2;

-----3. Duration of Symptoms before diagnosis.--------
select round(avg(duration_of_symptoms),0) as Avg_Duration_of_Symptom
from ocd_patient;

-----4. Duration of Symptoms before diagnosis vs obsession.--------

select obsession_type,round(avg(duration_of_symptoms),0) as Avg_Duration_of_Symptom
from ocd_patient group by obsession_type;

-----5. Duration of Symptoms before diagnosis vs complulsion.--------

select compultion_type,round(avg(duration_of_symptoms),0) as Avg_Duration_of_Symptom
from ocd_patient group by compultion_type;



























