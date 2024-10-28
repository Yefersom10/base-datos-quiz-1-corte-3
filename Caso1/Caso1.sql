SELECT
    *
FROM
    persona p
INNER JOIN user u ON p.id=u.persona_id
INNER JOIN user_role  ur ON ur.id=ur.user_id
INNER JOIN role_module rm ON ur.role_id=r.id
INNER JOIN modulo m ON rm.module_id=m.id
INNER JOIN modulo_view mv ON m.id= mv.module_id
INNER JOIN view  v ON mv.view_id= v.id        

SELECT 
        CONCAT(p.first_name, '', p.middle_name, '', p.last_name, '', p.second_last_name) AS nombreCompleto,
        u.user AS usuario,
        r.name AS rol,
        m.name AS modulo,
        v.name AS vista
    FROM 
        person p
    INNER JOIN user u ON p.id = u.person_id
    INNER JOIN user_role ur ON u.id = ur.user_id
    INNER JOIN role r ON ur.role_id = r.id
    INNER JOIN role_module rm ON r.id = rm.role_id
    INNER JOIN module m ON rm.module_id = m.id
    INNER JOIN module_view mv ON m.id = mv.module_id
    INNER JOIN view v ON mv.view_id = v.id