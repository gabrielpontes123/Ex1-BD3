use master;
drop database db3;
create database db3;
use db3;

create table tbl_cad_prod(
	id int identity(1,1),
	nome nvarchar(100) not null,
	pco decimal(7,2) not null,
	primary key (id)
	
)

create table tbl_prod_vendido(
	id int identity(1,1),
	id_vda int not null,
	id_prod int not null,
	qtd int not null,
	primary key (id)

)

create table tbl_vda(
	id int identity(1,1),
	data date not null,
	id_cli int not null,
	vlr decimal (7,2) not null,
	primary key (id)
)

create table tbl_cliente(
	id int identity(1,1),
	nome nvarchar(100) not null,
	primary key (id)
	
)

go

alter table tbl_prod_vendido
add constraint FK_cad_prod_vendido
foreign key (id_prod) references tbl_cad_prod(id)

alter table tbl_prod_vendido
add constraint FK_vda_prod_vendido
foreign key (id_vda) references tbl_vda(id)

alter table tbl_vda
add constraint FK_cliente_venda
foreign key (id_cli) references tbl_cliente(id)

go

insert into tbl_cliente values ('Gabriel')
insert into tbl_cliente values ('Nicolas')
insert into tbl_cliente values ('Gabriela')

insert into tbl_cad_prod values ('Mouse', 189.99)
insert into tbl_cad_prod values ('Monitor', 399.99)
insert into tbl_cad_prod values ('Teclado', 299.99)

insert into tbl_vda values ('2020-02-21', 1, 189.99)
insert into tbl_vda values ('2020-02-21', 2, 399.99)
insert into tbl_vda values ('2020-02-21', 3, 299.99)

insert into tbl_prod_vendido values (1, 1, 1)
insert into tbl_prod_vendido values (2, 2, 1)
insert into tbl_prod_vendido values (3, 3, 1)



  


