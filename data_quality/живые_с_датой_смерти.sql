select name, is_alive, death_year 
from people
where death_year is not null and is_alive = 1;