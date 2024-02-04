#Найдите производителей, выпускающих по меньшей мере три различных модели ПК.
#Вывести: Maker, число моделей ПК.



select maker, count(model) as qty
             FROM Product
             where type='PC'
             group by maker
             HAVING count(model)>2

