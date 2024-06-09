SELECT 
au.au_id as AuthorId,
au.au_lname as LastName, 
au.au_fname as FirstName,
SUM(s.qty) as TOTAL
FROM authors as au
inner join titleauthor as t on au.au_id = t.au_id
inner join sales as s on s.title_id = t.title_id
group by AuthorId, LastName, FirstName
order by TOTAL DESC LIMIT 3;
