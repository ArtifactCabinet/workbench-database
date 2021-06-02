-- get file name & corresponding language (in words rather than id)
select title,l.name
from film
left join language l on l.language_id = film.language_id
--         ^ alias language as l
order by title