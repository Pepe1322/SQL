select husband.name as муж, wife.name as жена, husband.is_alive, wife.is_alive
from marriages 
inner join people husband on marriages.husband_id = husband.id
inner join people wife on marriages.wife_id = wife.id
where marriages.still_married = 1 and (husband.is_alive = 0 or wife.is_alive = 0);