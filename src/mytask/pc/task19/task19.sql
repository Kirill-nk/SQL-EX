SELECT maker, AVG(screen) scr
FROM Laptop left join test.Product P on Laptop.model = P.model
GROUP BY maker
#Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов.
