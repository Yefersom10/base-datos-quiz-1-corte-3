SELECT 
    u.id AS user_id,
    r.name AS rol
FROM 
    user u
JOIN user_role ur ON u.id = ur.user_id
JOIN role r ON ur.role_id = r.id
WHERE 
    u.username = 'username' AND u.password = 'password';



use db_security;
SELECT 
    u.id AS user_id,
    r.name AS rol
FROM 
    user u
JOIN user_role ur ON u.id = ur.user_id
JOIN role r ON ur.role_id = r.id
WHERE 
    u.username = 'adam.jones' AND u.password = 'securePass1';
