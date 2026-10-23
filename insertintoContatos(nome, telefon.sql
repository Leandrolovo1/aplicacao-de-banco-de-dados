 insert into Contatos (nome, telefone) 
 values 
	 ("ana", "(11)8888888"),
	 ("joao", "(41)7888888"),
	 ("felipe", "(41)5888888"),
	 ("douglas", "(41)9888888"),
	 ("vanessa", "(41)1888888");
 
 select * from Contatos 


 use BANCO_TESTE;
update Contatos set nome = 'leandro' where id = 1;   

use BANCO_TESTE;
update Contatos set telefone = '(11)9449-4444' where id = 3;   
SELECT * from Contatos

use BANCO_TESTE; 
delete from Contatos where nome = 'vanessa';
select * from Contatos;