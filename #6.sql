select p.nombre, a.nombre from persona as p, asignatura as a, profesor as pro
where p.id= pro.id_profesor and a.id_profesor=pro.id_profesor
