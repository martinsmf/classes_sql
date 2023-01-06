create database cursores;
use cursores;

create table vendedroes (
    idvendedor int PRIMARY key auto_increment,
    nome varchar(50),
    jan int,
    fev int, 
    mar int
);

insert into vendedores VALUES(null, 'matheus', 32343427,432432400,98432432);
insert into vendedores VALUES(null, 'carla', 76534342,4324324,432);
insert into vendedores VALUES(null, 'joão', 623534342,4324324,32432);
insert into vendedores VALUES(null, 'ana', 32323342,24324,2432);
insert into vendedores VALUES(null, 'marcos', 3234342,4324324,432432);
insert into vendedores VALUES(null, 'carla', 30234342,94324324,14432);

select nome, (jan+fev+mar) as total from vendedores;


select nome, (jan+fev+mar) as total, (jan+fev+mar)/3 as media from vendedores;

create table vend_total(
    nome varchar(50),
    jan int,
    fev int, 
    mar int,
    total int,
    media int
);

dlimiter $

create procedure inseredados()
begin
    declare fim int default 0;
    declare var1, var2, var3, vtotal, vmedia int;
    declare vnome varchar(50);

    declare reg cursor for(
        select nome, jan, fev, mar from vendedores
    );

    declare continue handler for not found set fim = 1;

    open reg;

    repeat

        fetch reg into vnome, var1, var2, var3;
        if not fim then
            set vtotal = var1 + var2 + var3;
            set vmedia = vtotal / 3;

            insert into vend_total values(vnome, var1, var2, var3, vtotal, vmedia);
        end if;
    until fim end repeat;

    close reg;
end
 $

 delimiter ;

 select * from vendedores;
 select * from vend_total;

 call inseredados();