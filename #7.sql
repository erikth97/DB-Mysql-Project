select p.nombre, p.apellido, asi.nombre from persona as p
join alumno_se_matricula_asignatura as al on al.id_alumno=p.id
join asignatura as asi on asi.asig_id=al.id_asignatura
where asi.nombre='Álgegra lineal y matemática discreta';
