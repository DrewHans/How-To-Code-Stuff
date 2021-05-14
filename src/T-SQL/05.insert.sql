GO
-- insert a single row of data
INSERT INTO ExampleSchema.ExampleTable
    (somechar, somenullablechar, somenullablevarchar, somenullablenvarchar)
VALUES
    ('X', 'Y', 'Important VARCHAR', N'Important NVARCHAR')
;
GO
-- insert multiple rows of data
INSERT INTO ExampleSchema.ExampleTable
    (somechar, somenullablechar, somenullablevarchar, somenullablenvarchar)
VALUES
    ('A', NULL, NULL, NULL),
    ('B', NULL, NULL, N'Important NVARCHAR'),
    ('C', 'D', 'Important VARCHAR', N'Important NVARCHAR')
;
GO
-- insert into an identity column
SET IDENTITY_INSERT ExampleSchema.ExampleTable ON;
INSERT INTO ExampleSchema.ExampleTable
    (id, somechar)
VALUES
    (-100, 'Z')
;
SET IDENTITY_INSERT ExampleSchema.ExampleTable OFF;
GO