select teacher_id , Count(distinct subject_id) cnt from Teacher
group by teacher_id ; 

