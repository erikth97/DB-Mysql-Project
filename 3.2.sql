DELIMITER $$
create procedure proc1(IN id_persona int(300))
BEGIN
select p.nombre, a.nombre from persona as p, asignatura as a, alumno_se_matricula_asignatura as am
where p.tipo='alumno' and p.id_persona=id_persona and p.id_persona= am.id_alumno and a.asig_id=am.id_asignatura;

END $$
DELIMITER ;
CALL proc1(1);
