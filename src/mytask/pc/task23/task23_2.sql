/*
Найдите
производителей, которые производили бы как ПК со скоростью не менее 750 МГц,
так и ПК-блокноты со скоростью не менее 750 МГц.
Вывести: Maker.
 · Справка по теме:
    Явные операции соединения
    Пересечение и разность
*/


with t_pc as (select model, speed
from PC where speed>=750),
t_L as (
select model, speed
from Laptop
where speed>=750),
t_pr as (
SELECT *
FROM Product as P left join t_pc on P.model=t_pc.model left join Laptop as L ON P.model=L.model
where type in ('PC','Laptop'))
select * from t_pc;

select maker from
(
select P.maker
from Product as P left join Laptop L ON P.model=L.model
where L.speed >= 750
union
select P.maker
from Product as P left join PC ON P.model=PC.model
where PC.speed >= 750
) as df;

SELECT maker from (
SELECT maker from PC left join Product P on PC.model=P.model where speed>=750
union
SELECT maker from Laptop L left join Product P on L.model=P.model  where speed>=750) as ddd