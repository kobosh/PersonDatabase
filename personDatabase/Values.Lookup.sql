merge into dbo.lookup as target
using (values
(1,N'emp_status',N'active',N'active'),
(2,N'emp_status',N'absent',N'absent'),
(3,N'emp_status',N'prom',N'promoted'),
(4,N'emp_email',N'work',N'work'),
(5,N'emp_email',N'personal',N'personal')

)
as source (id,LookupType,lookupKey,LookupValue)
on target.id=source.id
when matched then
update  set 
LookupType=source.LookupType,
LookupKey=source.LookupKey,
LookupValue=source.LookupValue
when not matched by target then
insert (id,LookupType,LookupKey,LookupValue)
values(id,LookupType,LookupKey,LookupValue)

when not matched by source then
delete ;

