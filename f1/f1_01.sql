-- Escreva uma consulta para obter a(s) nacionalidade(s) (coluna nationality) em que há pelo menos uma equipe (tabela constructors), mas na qual não há pilotos (tabela drivers).

select "nationality" from "constructors" 
except 
select "nationality" from "drivers" 