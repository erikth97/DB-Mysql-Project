create view alumnos as 
select p.nombre, p.apellido1,p.apellido2
from persona as p
where p.tipo='alumno';

select * from alumnos;
