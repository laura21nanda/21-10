create database bd_cliente;

create table tbl_clientes(
codigo int not null primary key auto_increment,
nome varchar (40) not null,
sexo char(1)not null
);

insert into tbl_clientes (nome, sexo)
values ("Humberto", "M"), ("Ayrton", "M"), ("xuxa", "f");

select * from  tbl_clientes;



Delimiter $$
Create Procedure sp_lista (in opcao int)
begin
	if opcao = 0 then
		select * from tbl_clientes where sexo = 'f';
	elseif opcao = 1 then
		select * from tbl_clientes where sexo = 'M';
        else 
        select * from tbl_clientes;
        end if;
end $$
delimiter ;

show procedure status;

#Lista sexo feminino:
call sp_lista(0);
#Lista sexo masculino:
call sp_lista(1);
#lista todos:
call sp_lista(2);

​
DELIMITER $$
create procedure sp_busca_cliente_por_nome
(in nome_parcial VARCHAR(100))
BEGIN
	SELECT * FROM tbl_clientes
	WHERE nome LIKE concat('%', nome_parcial, '%');
END $$
DELIMITER ;



            


