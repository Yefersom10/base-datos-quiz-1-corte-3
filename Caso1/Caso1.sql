SELECT
    *
FROM
    persona p
INNER JOIN user u ON p.id=u.persona_id
INNER JOIN user_role  ur ON ur.id=ur.user_id
INNER JOIN role_module rm ON ur.role_id=r.id
        