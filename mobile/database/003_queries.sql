SELECT id, name, description
FROM poi
ORDER BY id;

SELECT id, name, description
FROM poi
WHERE id = :id;
