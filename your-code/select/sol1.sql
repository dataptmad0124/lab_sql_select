SELECT 
au.au_id as AuthorId,
au.au_lname as LastName, 
au.au_fname as FirstName, 
p.pub_name as publisher,
COUNT(s.title_id) AS TitleCount
FROM authors as au
join titleauthor as t on au.au_id = t.au_id
join titles as s on t.title_id = s.title_id
join publishers as p on  s.pub_id = p.pub_id
WHERE au.au_fname = 'Albert'
GROUP BY 
au.au_id, au.au_fname, au.au_lname, s.title, p.pub_name; 

