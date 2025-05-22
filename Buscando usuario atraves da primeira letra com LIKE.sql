-- Mostrar usuários que possuem a letra "A" no nome.
select * from usuarios
where Nome_Usuario like '%a%';

-- que começa com a letra 	Y 
select * from usuarios 
where Nome_Usuario like 'Y%';