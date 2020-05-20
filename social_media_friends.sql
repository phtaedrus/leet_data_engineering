select id, count(1) as num
from(
    select requester_id as id1 from request_accepted
        union all
    select accepter_id as id2 from request_accepted
) as t
group by id
order by num desc
limit 1;


