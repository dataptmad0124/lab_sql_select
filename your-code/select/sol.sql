SELECT 
au.au_id as Id,
au.au_lname as apellidoAutor, 
au.au_fname as nombreAutor, 
s.title as titulo, 
p.pub_name as publiserName 
FROM authors as au
join titleauthor as t on au.au_id = t.au_id
join titles as s on t.title_id = s.title_id
join publishers as p on  s.pub_id = p.pub_id 