delimiter $$ 
create procedure inserir_Esp(in sigla varchar(10), in tipo char(1), in qtdeCa int, in capacidade int, in descricao varchar(200), in depCod int)
	begin
		insert into Espaco values(sigla,tipo,qtdeCa,capacidade,descricao,depCod);
	end $$
    delimiter ;
    
delimiter $$ 
create procedure deleta_Esp(in siglaS varchar(10))
	begin
		delete from Espaco where sigla = siglaS;
	end $$
    delimiter ;
    
    
delimiter $$
create procedure atualiza_Esp(in qtdeCaS int, in capacidadeS int, in descricaoS varchar(200),in depCodS int, in siglaS varchar(10), in tipoS char (1))
begin 
		update Espaco 
        set qtdeCa = qtdeCaS, capacidade = capacidadeS, descricao = descricaoS, depCod = depCodS
        where sigla = siglaS and tipo = tipoS;
end $$
 delimiter ; 
 
 delimiter $$ 
 create procedure Lista_Esp ()
 begin 
		select *
        from Espaco ;
end $$
 
 delimiter ; 
 
 delimiter $$ 
 create procedure pesquisa_Esp(in siglaS varchar(10))
 begin 
		select *
        from Espaco
        where sigla = siglaS;
end $$
delimiter ;
 
        