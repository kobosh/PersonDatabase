CREATE TABLE [dbo].[Employee] (
    [EmpNo]   INT          NOT NULL,
    [EmpName] VARCHAR (50) NOT NULL,
    [Salary]  INT          NOT NULL,
    [DeptNo]  INT          NOT NULL,
    CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([EmpNo] ASC)
);

