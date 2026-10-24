 22-10-26
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
    texto_mensagem VARCHAR(255) NOT NULL,
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
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

--23/10/26
CREATE USER 'leandro.lovo'@'%'
IDENTIFIED BY 'Lovo@2026Senha!';

use BANCO_TESTE;
create table fornecedores (
    id_fornecedor int auto_increment primary Key,
    nome varchar(30),
    telefone varchar(20)
)

use BANCO_TESTE;
create table produtos (
    id_produto int auto_increment primary Key,
    nome varchar(30),
    preco decimal(8 ,2),
    id_fornecedor int,
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedores(id_fornecedor)
)

use BANCO_TESTE;
create table vendas (
    id_venda int auto_increment primary Key,
    data_venda date
)
