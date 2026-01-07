select houses.name, count(person_id) as kolvo,
case
    when count(person_id) <= 3 then "Small"
    when count(person_id) between 4 and 7 then "Medium"
    else "Large"
end as размер
from nobles
inner join houses on nobles.house_id = houses.id
group by houses.name;