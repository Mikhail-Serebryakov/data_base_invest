USE invest_ai;

--Срипт по выборке наименовании компании, цены акции и категории компании;
SELECT s.name AS 'Наименование компании', sp.price_ao AS 'Цена', c.name_category AS 'Сектор экономики'
FROM stocks s
LEFT JOIN stock_price sp
ON s.id = sp.name_id
LEFT JOIN category c
ON s.id = c.name_id
ORDER BY sp.price_ao DESC;

--Название компании, код ценной бумаги, выручка компании, кол-во акций в отрасли и средний долг по сектору экономики;
SELECT s.name AS 'Наименование компании', s.id AS 'Код ценной бумаги', 
ed.revenue AS 'Выручка',
COUNT(s.id) OVER (PARTITION BY c.name_category) AS 'Количество компаний в секторе',
AVG(ed.debt) OVER (PARTITION BY cm.name_category) AS 'Средний долг по категории сектора'
FROM stocks s
JOIN economic_data ed 
ON s.id = ed.name_code_id
JOIN category c 
ON s.id = c.name_id
JOIN category cm
ON s.id = cm.name_id;

--Компании их индексы и имеют мультипликатор рентабельность собсвенного капитала > 2.5;
SELECT s.id AS 'Код ценной бумаги', s.name AS 'Наименование компании',
i.name_index AS 'Название индекса', ed.return_on_equity AS 'Рентабельность'
FROM stocks s
JOIN index_name i
ON s.id = i.name_id
JOIN economic_data ed
ON s.id = ed.name_code_id
WHERE ed.return_on_equity > 2.5;

--Максимальная выручка по категории компании;
SELECT s.id AS 'Код ценной бумаги', MAX(ed.earnings) AS 'Выручка', cm.name_category AS 'Категория компании'
FROM stocks s
JOIN economic_data ed
ON s.id = ed.name_code_id
JOIN category_markets cm
ON s.id = cm.name_id
GROUP BY cm.name_category;

--Представление на получение цены акции, ее капитализации и даты последнего отчета;
CREATE VIEW invest_1 AS 
SELECT s.id AS 'Код ценной бумаги', sp.price_ao AS 'Цена АО', sp.price_pr AS 'Цена ПРЕФ',
ed.ev AS 'Капитализация', ed.created_at AS 'Дата отчета'
FROM stocks s
JOIN stock_price sp
ON s.id = sp.name_id
JOIN economic_data ed
ON s.id = ed.name_code_id
ORDER BY s.id;

SELECT * FROM invest_1;

--Представление на объединение информации о акциях и облигациях с ценами;
CREATE VIEW invest_2 AS 
SELECT s.id AS 'Код ценной бумаги', s.name AS 'Наименование компании', 
	s.isin_name AS 'Международный код', s.quantity AS 'Кол-во бумаг в обращении', sp.price_ao AS 'Цена'
FROM stocks s
JOIN stock_price sp
ON s.id = sp.name_id
UNION ALL
SELECT b.id, b.name, b.isin_name, b.quantity_ao, sp.price_bond
FROM bond b
JOIN stock_price sp
ON b.id = sp.name_id_bond;

SELECT * FROM invest_2;


