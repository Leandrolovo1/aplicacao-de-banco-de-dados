 insert into Contatos (nome, telefone) 
 values 
	 ("ana", "(11)8888888"),
	 ("joao", "(41)7888888"),
	 ("felipe", "(41)5888888"),
	 ("douglas", "(41)9888888"),
	 ("jose", "(11)9888888"),
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


use BANCO_TESTE;
CREATE TABLE Mensagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    contato_id INT,

    FOREIGN KEY (contato_id) REFERENCES Contatos(id)
);

INSERT INTO Mensagens (texto_mensagem, contato_id) VALUES 
('Olá, gostaria de saber o preço do produto X.', 1), 
('Meu pedido ainda não chegou, podem ajudar?', 2),     
('Obrigado pelo excelente atendimento!', 1);         

select * from Mensagens;

SELECT Contatos.nome, Mensagens.texto_mensagem, Mensagens.data_envio
FROM Mensagens
JOIN Contatos ON Mensagens.contato_id = Contatos.id;

SELECT Contatos.nome, Mensagens.texto_mensagem
FROM Contatos
LEFT JOIN Mensagens ON Contatos.id = Mensagens.contato_id;