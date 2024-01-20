select user_id , name , mail from Users 
where mail LIKE '%@leetcode.com' 
AND mail REGEXP '^[A-Za-z]' 
AND LEFT(mail , LOCATE('@leetcode.com' , mail)-1 )  REGEXP '^[a-zA-Z0-9_\\-.]+$' ;