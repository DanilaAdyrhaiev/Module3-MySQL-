use init_db;
select *
from project
where datediff(FINISH_DATE, START_DATE) = 
(select max(datediff(FINISH_DATE, START_DATE))
from project);