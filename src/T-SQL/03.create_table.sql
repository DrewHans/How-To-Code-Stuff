GO

CREATE TABLE ExampleSchema.ExampleTable
(
    id INT IDENTITY(1,1) NOT NULL,
    somechar CHAR(5) NOT NULL,
    somenullablechar CHAR(5) NULL,
    somenullablevarchar VARCHAR(32) NULL,
    somenullablenvarchar NVARCHAR(32) NULL,
)
;

GO