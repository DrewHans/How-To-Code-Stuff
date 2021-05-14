GO
-- simple select
SELECT * FROM ExampleSchema.ExampleTable; -- using * is bad practice
GO
-- specific column select
SELECT
    id,
    somechar,
    somenullablechar,
    somenullablevarchar,
    somenullablenvarchar
FROM ExampleSchema.ExampleTable
ORDER BY id
;
GO
-- conditional column select
SELECT
    id,
    somechar,
    somenullablechar,
    somenullablevarchar,
    somenullablenvarchar
FROM ExampleSchema.ExampleTable
WHERE id > 10
  AND somenullablechar IS NOT NULL
ORDER BY id
;
GO
-- select from join
SELECT
    t1.id,
    t1.somechar,
    t1.somenullablechar,
    t1.somenullablevarchar,
    t1.somenullablenvarchar,
    t2.somevalue
FROM ExampleSchema.ExampleTable1 AS t1
JOIN ExampleSchema.ExampleTable1 AS t2
  ON t1.id = t2.id
ORDER BY t1.id
;
GO
-- joins in t-sql:
-- - INNER JOIN,
-- - LEFT [OUTER] JOIN,
-- - RIGHT [OUTER] JOIN
-- - FULL [OUTER] JOIN
-- - CROSS JOIN