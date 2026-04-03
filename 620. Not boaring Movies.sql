use leetcode;

create table Cinema(
id int,
name varchar(19),
description varchar(20),
rating float
);

insert into Cinema values (1 ,' War ',' great 3D',8.9 ),
						(2  ,' Science ','fiction ',    8.5  ),
						( 3  ,' irish ',     ' boring'      , 6.2    ),
						( 4  ,'Ice song',' Fantacy ', 8.6    ),
						( 5  ,' House card ','Interesting ',9.1 );   
  
-- Getting Odd records From table 
select  id 
from Cinema
where id % 2 !=0;

-- Getting Even Records from table
select id from cinema
where id % 2=0;


select id,name,description,rating
from Cinema
where id % 2!=0 and description not in (' boring')
order by id desc;


select id ,name,description , rating
from Cinema
where id % 2!=0 and description !=' boring'
order by rating desc
