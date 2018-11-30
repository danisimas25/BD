delimiter $$ 
create procedure inserir_Even(in nome varchar(20), in organizador varchar(50), in descricao varchar(200), in horaInicial time, in horaFinal time, in dataInicio date, in dataFim date, in funcRegistra varchar(12))
	begin
		insert into Evento values(nome, organizador,descricao,horaInicial,horaFinal,dataInicio,dataFim,funcRegistra);
	end $$
    delimiter ;
    
delimiter $$ 
create procedure deleta_Even(in codigoE int)
	begin
		delete from Evento where codigo = codigoE;
	end $$
    delimiter ;
    
    
delimiter $$
create procedure atualiza_Even(in nomeE varchar (20), in horaInicialE time, in horaFinalE time, in dataFimE date, in codigoE int)
begin 
		update Evento 
        set nome = nomeE, horaInicial = horaInicialE, horaFinal = horaFinalE, dataFim = dataFimE
        where codigo = codigoE;
end $$
 delimiter ; 
 
 delimiter $$ 
 create procedure Lista_Even ()
 begin 
		select *
        from Evento ;
end $$

delimiter $$ 
create procedure pesquisar_Even (in codigoE int)
begin 
		select * 
		from Evento 
		where codigo = codigoE;
end $$
delimiter ; 
 