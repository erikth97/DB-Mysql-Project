select p.nombre, p.apellido1, p.apellido2,d.nombre from persona as p, profesor as pro, departamento as d
where pro.id_profesor=p.id and d.id=pro.id_departamento
