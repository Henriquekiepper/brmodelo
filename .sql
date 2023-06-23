
CREATE TABLE usuario 
( 
 id_usuario INT PRIMARY KEY,  
 nome VARCHAR(n),  
 email VARCHAR(n) NOT NULL,  
 senha VARCHAR(n) NOT NULL,  
 sexo INT,  
 nascimento DATE,  
); 

CREATE TABLE endereço 
( 
 id_endereço INT PRIMARY KEY,  
 bairro VARCHAR(n),  
 rua VARCHAR(n),  
 cep VARCHAR(n),  
 id_usuario INT NOT NULL,  
); 

CREATE TABLE amigos 
( 
 id_amigos INT PRIMARY KEY,  
 data INT,  
 id_usuario INT,  
 idusuario INT,  
); 

CREATE TABLE telefone 
( 
 id_telefone INT PRIMARY KEY,  
 ddd INT,  
 numero INT,  
 idusuario INT,  
); 

CREATE TABLE posts 
( 
 id_posts INT PRIMARY KEY,  
 data INT,  
 conteudo INT,  
 autor INT,  
 idusuario INT,  
); 

CREATE TABLE comentarios 
( 
 id_comentarios INT PRIMARY KEY,  
 data INT,  
 conteudo INT,  
 autor INT,  
 idposts INT,  
); 

ALTER TABLE endereço ADD FOREIGN KEY(id_usuario) REFERENCES usuario (id_usuario)
  
ALTER TABLE amigos ADD FOREIGN KEY(idusuario) REFERENCES usuario (idusuario)
  
ALTER TABLE telefone ADD FOREIGN KEY(idusuario) REFERENCES usuario (idusuario)
  
ALTER TABLE posts ADD FOREIGN KEY(idusuario) REFERENCES usuario (idusuario)
  
ALTER TABLE comentarios ADD FOREIGN KEY(idposts) REFERENCES posts (idposts)

