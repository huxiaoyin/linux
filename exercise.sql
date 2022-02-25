-- 如何检索 ID 为 1 和 5 的设施的详细信息？  尝试在不使用 OR 运算符的情况下执行此操作。
select * from  facilities where facid in (1,5);

-- 您如何制作一份设施清单，根据每月的维护成本是否超过 100 美元，将每个设施标记为“便宜”或“昂贵”？  返回相关设施的名称和每月维护。
select name,
       case when (monthlymaintenance>100) then 'expensive'
            else 'cheap'
           end as cost
from facilities;

-- 您如何生成 2012 年 9 月开始之后加入的成员列表？  返回相关成员的姓名、姓氏、名字和加入日期。