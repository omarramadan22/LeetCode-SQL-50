select Signups.user_id , round( IFNULL(SUM(Confirmations.action = 'confirmed' ) / count(Confirmations.time_stamp) , 0) , 2 ) confirmation_rate from Signups
left join Confirmations 
ON Signups.user_id = Confirmations.user_id 
group by user_id ; 
