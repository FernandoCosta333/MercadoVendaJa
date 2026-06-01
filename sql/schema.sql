create database vendaJa character set utf8mb4 collate utf8_unicode_ci;
USE vendaJa;
create table usuarios(id_u  int auto_increment primary key,nome_U varchar(100) not null,
email varchar(150) unique not null,senha_hash varchar(255) NOT NULL,telefone(20),
criado_em timestamp default current_timestamp);


create table categorias(id_c int auto_increment primar key,nome_c varchar(50) not null unique);

create produtos( id_p int auto_increment primary key,
Id_vendedor int not null,
Id_Categoria int not null,
titulo  varchar(200) not null, decricao text,
preco decimal(10,2) not null,status enum('ativo', 'vendido','pausado')default 'ativo',
criado_em Timestamp default currnt_timestamp,
foreign key (id_vendedor) references usuarios(id_u) on delete cascade,
foreign key (id_categoria) references categoria(id_c) on delete set null);

create table pedidos(id_pedido int auto_increment primary key,
id_produto int not null,
id_comprador int not null,
id_vendeodor int not null,
preco_fechado decimal(10,2) not null,
status enum('pendente','confirmado', 'cancelado','concluido') default 'pendente',
criado_em timestamp default current_timestamp,
foreign key (id_produto) references produtos(id_p) on delete cascade,
foreign key (id_comprador) references usuarios(id_u) on delete cascade,
foreign key (id_vendedor) references usuarios(id_u) on delete cascade );

inser into categorias(nome_C)
values (('Electronicos'),('Roupas'),('Casa'),('Carros'));
inser into usuarios(nome_U,email,senha_hash) values(
('Francisco kanuela Joaquim','kanuelafrancicojoaquim@gamil.com','hash123'),
'Svetlana Ndhequete','svetlana@gamil.com','hash456');

insert into Produtos(Id_p,Id_C,tutulo,descricao,preco) values
(1,1,'Iphone 13 128GB','usado','bateria 70%',12.400),
(2,2,'casaco vrmelho','Nova','Sem uso',3000.00);
