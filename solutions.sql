select a.au_id, concat(au.au_fname, ' ', au.au_lname) as completename, t.title, pu.pub_name
from publication.titles as t
left join publication.titleauthor as a
on t.title_id=a.title_id
left join publication.authors as au
on a.au_id=au.au_id
left join publication.publishers as pu
on t.pub_id=pu.pub_id;


select a.au_id, concat(au.au_fname, ' ', au.au_lname) as completename, pu.pub_name, count(a.au_id) as numtitles
from publication.titles as t
left join publication.titleauthor as a
on t.title_id=a.title_id
left join publication.authors as au
on a.au_id=au.au_id
left join publication.publishers as pu
on t.pub_id=pu.pub_id
group by a.au_id, completename, pu.pub_name
order by numtitles desc;

select a.au_id, concat(au.au_fname, ' ', au.au_lname) as completename, sum(s.qty) as totalqty
from publication.titles as t
left join publication.titleauthor as a
on t.title_id=a.title_id
left join publication.authors as au
on a.au_id=au.au_id
left join publication.sales as s
on t.title_id=s.title_id
group by a.au_id,completename
order by totalqty desc limit 3;

select a.au_id, concat(au.au_fname, ' ', au.au_lname) as completename, sum(s.qty) as totalqty
from publication.titles as t
left join publication.titleauthor as a
on t.title_id=a.title_id
left join publication.authors as au
on a.au_id=au.au_id
left join publication.sales as s
on t.title_id=s.title_id
group by a.au_id,completename
order by totalqty desc;
Footer
