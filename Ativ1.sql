create table tbl_clientes2(
id int primary key auto_increment not null,
nome varchar (100),
idade int,
sexo char(1),
email varchar(100),
telefone varchar(15),
endereco varchar (255)
);

insert into tbl_clientes2 (nome, idade, sexo, email, telefone, endereco)
values ("Lucas Fabiano", 21, "M", "lukinha@gmail.com", "15-99123-456", "Guarei centro "),
		("Gabrielli Ferreira", 16, "F", "gabsFerreira@gmail.com", "15-99123-456", "Itapetininga centro "),
        ("Beatrice 	Almeida", 17, "F", "biaAlmeida@gmail.com", "15-99123-456", "Guarei nova-guarei "),
        ("Davi Francisco", 19, "M", "Francisdavid@gmail.com", "15-99123-456", "Guarei centro "),
        ("Expedito", 72, "M", "piditinho@gmail.com", "15-99123-456", "Guarei cohab ");
        
        
        select * from  tbl_clientes2;
        
        Delimiter $$
Create Procedure Maior_de_idade2 (in opcao int)
begin
	if opcao = 0 then
		select * from tbl_clientes2 where idade  > 18;
	elseif opcao = 1 then
		select * from tbl_clientes2 where idade < 18;
        else 
        select * from tbl_clientes2;
        end if;
end $$
delimiter ;

show procedure status;

#Lista maior de idade:
call Maior_de_idade2(0);
#Lista menor de idade:
call Maior_de_idade2(1);
#lista todos:
call Maior_de_idade2(2);
