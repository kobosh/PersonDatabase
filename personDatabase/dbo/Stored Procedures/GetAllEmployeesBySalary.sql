Create PROCEDURE [dbo].[GetAllEmployeesBySalary]
    (
        @Salary int
    )
AS
        Select * from Employee where Salary>@Salary
    RETURn