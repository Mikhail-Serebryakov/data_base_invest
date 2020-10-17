USE invest_ai;
SHOW TABLES;


CREATE TABLE stocks (
	id CHAR(12) PRIMARY KEY NOT NULL COMMENT 'Код ценной бумаги',
    name VARCHAR(255) NOT NULL COMMENT 'Наименование ценной бумаги',
    type_name CHAR(24) NOT NULL COMMENT 'Тип ценной бумаги АО или ПРЕФ',
    isin_name CHAR(24) NOT NULL COMMENT 'Международный идентификационный код ценной бумаги',
    quantity BIGINT NOT NULL COMMENT 'Количество акций в обращении',
    level_listing INT NOT NULL COMMENT 'Уровень листинга ценной бумаги(первый эшелон, второй эшелон, третий эшелон)'
    ) COMMENT = 'Параметры ценной бумаги - Акции';
    
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('SBER', 'Сбербанк', 'АО', 'RU0009029540', 21586948000, 1);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('POLY', 'Polymetal', 'АО', 'JE00B6T5S470', 471804467, 1);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('LKOH', 'ЛУКОЙЛ', 'АО', 'RU0009024277', 692865762, 1);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('IRAO', 'ИнтерРАОао', 'АО', 'RU000A0JPNM1', 104400000000, 1);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('GAZP', 'ГАЗПРОМ ао', 'АО', 'RU0007661625', 23673512900, 1);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('MAIL', 'MAIL-гдр', 'Депозитарная расписка', 'US5603172082', 188937, 1);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('GMKN', 'ГМКНорНик', 'АО', 'RU0007288411', 158245476, 1);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('YNDX', 'Yandex clA', 'АО', 'NL0009805522', 317430479, 1);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('MOEX', 'МосБиржа', 'АО', 'RU000A0JR4A1', 2276401458, 1);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('HYDR', 'РусГидро', 'АО', 'RU000A0JPKH7', 426288813551, 1);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('LSNGP', 'Ленэнерго ПАО-ап', 'ПРЕФ', 'RU0009092134', 93264311, 3);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('RASP', 'Распадская', 'АО', 'RU000A0B90N8', 703271727, 2);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('SBERP', 'Сбербанк-п', 'ПРЕФ', 'RU0009029557', 1000000000, 1);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('RUAL', 'RUSAL plc', 'АО', 'JE00B5BCW814', 15193014862, 1);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('ABRD', 'АбрауДюрсо', 'АО', 'RU000A0JS5T7', 98000184, 3);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('SNGSP', 'Сургнфгз-п', 'ПРЕФ', 'RU0009029524', 7701998235, 2);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('VTBR', 'ВТБ ао', 'АО', 'RU000A0JP5V6', 12960541337338, 1);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('NVTK', 'Новатэк ао', 'АО', 'RU000A0DKVS5', 3036306000, 1);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('BANEP', 'Башнефт ап', 'ПРЕФ', 'RU0007976965', 29788012, 3);
INSERT INTO `stocks` (`id`, `name`, `type_name`, `isin_name`, `quantity`, `level_listing`) VALUES ('MTLRP', 'Мечел ап', 'ПРЕФ', 'RU000A0JPV70', 138756915, 2);


CREATE TABLE bond (
    id CHAR(12) PRIMARY KEY NOT NULL COMMENT 'Код ценной бумаги',
    name VARCHAR(255) NOT NULL COMMENT 'Наименование ценной бумаги',
    isin_name CHAR(24) NOT NULL COMMENT 'Международный идентификационный код ценной бумаги',
    quantity_ao INT NOT NULL COMMENT 'Обьем выпуска',
    level_listing INT NOT NULL COMMENT 'Уровень листинга облигации',
    start_data DATE COMMENT 'Дата начала торгов',
    maturity_date DATE COMMENT 'Дата погашения',
    coupon_rate DECIMAL(4, 2) NOT NULL COMMENT 'Ставка купона в %'
    ) COMMENT = 'Параметры ценной бумаги - Облигации';
    
INSERT INTO `bond` (`id`, `name`, `isin_name`, `quantity_ao`, `level_listing`, `start_data`, `maturity_date`, `coupon_rate`) VALUES ('SU52001RMFS3', 'ОФЗ 52001', 'RU000A0JVMH1', 150000000, 1, '2015-07-17', '2023-08-29', '2.50');
INSERT INTO `bond` (`id`, `name`, `isin_name`, `quantity_ao`, `level_listing`, `start_data`, `maturity_date`, `coupon_rate`) VALUES ('SU52002RMFS1', 'ОФЗ 52002', 'RU000A0ZYZ26', 250000000, 1, '2018-03-21', '2028-02-02', '2.56');


    
CREATE TABLE economic_data (
	id INT NOT NULL PRIMARY KEY COMMENT "Идентификатор строки",
	name_code_id CHAR(12) NOT NULL COMMENT 'Код ценной бумаги',
    revenue INT NOT NULL COMMENT 'Выручка компании',
    ebitda INT NOT NULL COMMENT 'Прибыль до вычета амортизации, налогов и уплаты прцоентов',
    earnings INT NOT NULL COMMENT 'Чистая прибыль',
    debt INT NOT NULL COMMENT 'Чистый долг компании, может быть отрицательным если денег на балансе больше чем обязательств',
    cash_flow INT NOT NULL COMMENT 'Cовокупность распределенных во времени поступлений (притока) и выплат (оттока) денежных средств',
    created_at DATETIME COMMENT "Дата отчета",
	debt_ebitda INT NOT NULL COMMENT 'Чистая прибыль',
    return_on_equity DECIMAL(4, 2) NOT NULL COMMENT 'Рентабельность собсвенного капитала',
    roce DECIMAL(4, 2) NOT NULL COMMENT 'Рентабельность',
    ev_ebitda DECIMAL(4, 2) NOT NULL COMMENT 'Отношение капитализации к операционной прибыли',
    ev INT NOT NULL COMMENT 'EV = цена акций + долг компании — собсвенные денежные средства',
	own_funds INT NOT NULL COMMENT 'Собственные средства',
    loan_proceeds INT NOT NULL COMMENT 'Заемные средства',
    price_earning DECIMAL(4, 2) NOT NULL COMMENT 'Соотношение цена акции/прибыль компании',
    FOREIGN KEY (name_code_id) REFERENCES stocks(id)
    ) COMMENT = 'Экономические показатели компании';
    
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (1, 'SBER', 6754465, 150, 756, 432, 542, '2019-08-18 12:05:42', 442, 2.4, 1.7, 3.3, 421, 542, 654, 2.5);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (2, 'POLY', 675433, 550, 9873, 312, 5997, '2020-08-18 12:08:42', 1442, 1.4, 1.5, 2.3, 421, 5422, 4211, 1.5);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (3, 'LKOH', 112176, 412, 432, 2343, 2221, '2020-04-20 10:05:42', 7673, 2.7, 1.2, 3.1, 321, 532, 124, 3.5);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (4, 'IRAO', 421232, 124, 542, 11003, 2312, '2019-09-18 08:05:42', 321, 1.9, 1.4, 4.2, 551, 6533, 124, 4.5);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (5, 'GAZP', 9984465, 9970, 5056, 1232, 5202, '2020-01-18 16:05:42', 122, 2.7, 1.3, 2.3, 321, 421, 243, 4.5);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (6, 'MAIL', 3444322, 151, 536, 4233, 521, '2020-07-02 10:05:42', 512, 2.3, 2.7, 1.3, 2211, 521, 894, 1.5);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (7, 'GMKN', 7455, 235, 231, 5543, 6432, '2020-03-23 14:03:42', 512, 2.6, 2.7, 2.3, 432, 332, 234, 2.9);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (8, 'YNDX', 986211, 8267, 76255, 76277, 312, '2019-04-10 12:19:12', 4212, 1.4, 2.7, 3.3, 4121, 5221, 231, 1.5);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (9, 'MOEX', 975541, 564, 6652, 881, 6332, '2029-09-02 13:29:41', 412, 2.6, 4.7, 2.3, 211, 212, 411, 2.6);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (10, 'HYDR', 887123, 4224, 132, 685, 633, '2020-07-12 15:12:53', 633, 2.1, 1.2, 1.3, 532, 213, 614, 1.2);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (11, 'LSNGP', 6785465, 159, 756, 4963, 523, '2020-04-07 15:25:42', 212, 1.4, 1.7, 1.3, 421, 124, 421, 1.5);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (12, 'RASP', 887534, 873, 100342, 9085, 982, '2020-08-01 11:09:52', 103, 1.1, 5.4, 2.1, 105, 513, 513, 1.2);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (13, 'SBERP', 6754465, 150, 756, 432, 542, '2019-08-18 12:05:42', 442, 2.4, 1.7, 3.3, 421, 542, 654, 2.5);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (14, 'RUAL', 900653, 820, 441, 3001, 1124, '2020-07-11 10:43:42', 444, 4.7, 2.9, 1.2, 990, 432, 634, 1.5);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (15, 'ABRD', 96436, 142, 100, 214, 253, '2019-12-14 09:04:22', 421, 1.6, 1.1, 2.6, 322, 542, 642, 1.2);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (16, 'SNGSP', 9892230, 6044, 8032, 1245, 532, '2020-02-28 15:25:42', 443, 2.2, 4.7, 1.3, 552, 112, 774, 2.5);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (17, 'VTBR', 8871220, 889, 127, 422, 455, '2020-08-14 12:01:42', 521, 5.4, 1.2, 3.7, 464, 512, 532, 3.2);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (18, 'NVTK', 872412, 782, 892, 663, 146, '2020-09-12 16:42:12', 903, 2.7, 1.5, 3.1, 642, 5233, 1000, 2.2);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (19, 'BANEP', 221874, 7713, 307, 301, 425, '2020-04-09 16:04:47', 210, 2.9, 1.2, 4.3, 612, 421, 422, 2.1);
INSERT INTO economic_data (id, name_code_id, revenue, ebitda, earnings, debt, cash_flow, created_at, 
debt_ebitda, return_on_equity, roce, ev_ebitda, ev, own_funds, loan_proceeds, price_earning) 
VALUES (20, 'MTLRP', 1003212, 553, 822, 432, 153, '2020-05-26 11:36:18', 648, 3.4, 4.7, 5.3, 229, 633, 711, 4.5);



CREATE TABLE category (
	id INT NOT NULL PRIMARY KEY COMMENT 'Идентификатор строки',
    name_id CHAR(12) NOT NULL COMMENT 'Ссылка на код ценной бумаги',
    name_category VARCHAR(150) NOT NULL COMMENT 'Название категории (отрасли)',
    FOREIGN KEY (name_id) REFERENCES stocks(id)
    ) COMMENT = 'Наименование категорий по отрослям (it, банки, и т.д.)';
    
INSERT INTO category (id, name_id, name_category) VALUES (1, 'SBER', 'Банковский сектор');   
INSERT INTO category (id, name_id, name_category) VALUES (2, 'POLY', 'Золотодобывающая компания'); 
INSERT INTO category (id, name_id, name_category) VALUES (3, 'LKOH', 'Нефтяная компания');
INSERT INTO category (id, name_id, name_category) VALUES (4, 'IRAO', 'Энергетическая компания');
INSERT INTO category (id, name_id, name_category) VALUES (5, 'GAZP', 'Нефтегазовая компания');
INSERT INTO category (id, name_id, name_category) VALUES (6, 'MAIL', 'Технологическая компания');
INSERT INTO category (id, name_id, name_category) VALUES (7, 'GMKN', 'Горно-металлургическая компания');
INSERT INTO category (id, name_id, name_category) VALUES (8, 'YNDX', 'Технологическая компания');
INSERT INTO category (id, name_id, name_category) VALUES (9, 'MOEX', 'Банковский сектор');
INSERT INTO category (id, name_id, name_category) VALUES (10, 'HYDR', 'Энергетическая компания');
INSERT INTO category (id, name_id, name_category) VALUES (11, 'LSNGP', 'Электросетевая компания');
INSERT INTO category (id, name_id, name_category) VALUES (12, 'RASP', 'Угольная компания');
INSERT INTO category (id, name_id, name_category) VALUES (13, 'SBERP', 'Банковский сектор');
INSERT INTO category (id, name_id, name_category) VALUES (14, 'RUAL', 'Алюминиевая компания');
INSERT INTO category (id, name_id, name_category) VALUES (15, 'ABRD', 'Производственная компания');
INSERT INTO category (id, name_id, name_category) VALUES (16, 'SNGSP', 'Нефтеная компания');
INSERT INTO category (id, name_id, name_category) VALUES (17, 'VTBR', 'Банковский сектор');
INSERT INTO category (id, name_id, name_category) VALUES (18, 'NVTK', 'Нефтегазовая компания');
INSERT INTO category (id, name_id, name_category) VALUES (19, 'BANEP', 'Нефтеная компания');
INSERT INTO category (id, name_id, name_category) VALUES (20, 'MTLRP', 'Угольная компания');



CREATE TABLE category_markets (
	id INT NOT NULL PRIMARY KEY COMMENT 'Идентификатор строки',
    name_id CHAR(12) NOT NULL COMMENT 'Ссылка на код ценной бумаги',
    name_category VARCHAR(150) NOT NULL COMMENT 'Название категории (сектор)',
    FOREIGN KEY (name_id) REFERENCES stocks(id)
    ) COMMENT = 'Наименование категорий по секторам (компании роста, дивидендные компании и т.д.';
  
INSERT INTO category_markets (id, name_id, name_category) VALUES (1, 'SBER', 'Компания роста');   
INSERT INTO category_markets (id, name_id, name_category) VALUES (2, 'POLY', 'Дивидендная компания'); 
INSERT INTO category_markets (id, name_id, name_category) VALUES (3, 'LKOH', 'Дивидендная компания');
INSERT INTO category_markets (id, name_id, name_category) VALUES (4, 'IRAO', 'Дивидендная компания');
INSERT INTO category_markets (id, name_id, name_category) VALUES (5, 'GAZP', 'Дивидендная компания');
INSERT INTO category_markets (id, name_id, name_category) VALUES (6, 'MAIL', 'Компания роста');
INSERT INTO category_markets (id, name_id, name_category) VALUES (7, 'GMKN', 'Дивидендная компания');
INSERT INTO category_markets (id, name_id, name_category) VALUES (8, 'YNDX', 'Компания роста');
INSERT INTO category_markets (id, name_id, name_category) VALUES (9, 'MOEX', 'Компания роста');
INSERT INTO category_markets (id, name_id, name_category) VALUES (10, 'HYDR', 'Стагнирующая компания');
INSERT INTO category_markets (id, name_id, name_category) VALUES (11, 'LSNGP', 'Дивидендная компания');
INSERT INTO category_markets (id, name_id, name_category) VALUES (12, 'RASP', 'Компания роста');
INSERT INTO category_markets (id, name_id, name_category) VALUES (13, 'SBERP', 'Компания роста');
INSERT INTO category_markets (id, name_id, name_category) VALUES (14, 'RUAL', 'Компания роста');
INSERT INTO category_markets (id, name_id, name_category) VALUES (15, 'ABRD', 'Стагнирующая компания');
INSERT INTO category_markets (id, name_id, name_category) VALUES (16, 'SNGSP', 'Дивидендная компания');
INSERT INTO category_markets (id, name_id, name_category) VALUES (17, 'VTBR', 'Компания роста');
INSERT INTO category_markets (id, name_id, name_category) VALUES (18, 'NVTK', 'Компания роста');
INSERT INTO category_markets (id, name_id, name_category) VALUES (19, 'BANEP', 'Стагнирующая компания');
INSERT INTO category_markets (id, name_id, name_category) VALUES (20, 'MTLRP', 'Стагнирующая компания'); 


 CREATE TABLE index_name (
	id INT NOT NULL PRIMARY KEY COMMENT 'Идентификатор строки',
    name_id CHAR(12) NOT NULL COMMENT 'Ссылка на код ценной бумаги',
    name_index VARCHAR(150) NOT NULL COMMENT 'Название индекса',
    FOREIGN KEY (name_id) REFERENCES stocks(id)
    ) COMMENT = 'Вхождение в индекс';   
    
INSERT INTO index_name (id, name_id, name_index) VALUES (1, 'SBER', 'Индекс МосБиржи');   
INSERT INTO index_name (id, name_id, name_index) VALUES (2, 'POLY', 'Индекс Голубых фишек'); 
INSERT INTO index_name (id, name_id, name_index) VALUES (3, 'LKOH', 'Индекс широкого рынка');
INSERT INTO index_name (id, name_id, name_index) VALUES (4, 'IRAO', 'Индекс МосБиржи');
INSERT INTO index_name (id, name_id, name_index) VALUES (5, 'GAZP', 'Индекс финансов');
INSERT INTO index_name (id, name_id, name_index) VALUES (6, 'MAIL', 'Индекс РТС');
INSERT INTO index_name (id, name_id, name_index) VALUES (7, 'GMKN', 'Индекс Голубых фишек');
INSERT INTO index_name (id, name_id, name_index) VALUES (8, 'YNDX', 'Индекс РТС широкого рынка');
INSERT INTO index_name (id, name_id, name_index) VALUES (9, 'MOEX', 'Индекс РТС');
INSERT INTO index_name (id, name_id, name_index) VALUES (10, 'HYDR', 'Индекс вектор устойчивого развития');
INSERT INTO index_name (id, name_id, name_index) VALUES (11, 'LSNGP', 'Индекс МосБиржи');
INSERT INTO index_name (id, name_id, name_index) VALUES (12, 'RASP', 'Индекс Мосбиржи');
INSERT INTO index_name (id, name_id, name_index) VALUES (13, 'SBERP', 'Индекс Голубых фишек');
INSERT INTO index_name (id, name_id, name_index) VALUES (14, 'RUAL', 'Индекс РТС');
INSERT INTO index_name (id, name_id, name_index) VALUES (15, 'ABRD', 'Индекс МосБиржи');
INSERT INTO index_name (id, name_id, name_index) VALUES (16, 'SNGSP', 'Индекс вектор устойчивого развития');
INSERT INTO index_name (id, name_id, name_index) VALUES (17, 'VTBR', 'Индекс Голубых фишек');
INSERT INTO index_name (id, name_id, name_index) VALUES (18, 'NVTK', 'Индекс Государственного сектора');
INSERT INTO index_name (id, name_id, name_index) VALUES (19, 'BANEP', 'Индекс Государственного сектора');
INSERT INTO index_name (id, name_id, name_index) VALUES (20, 'MTLRP', 'Индекс устойчивого развития'); 


CREATE TABLE level_listing (
    id INT NOT NULL PRIMARY KEY COMMENT 'Идентификатор строки',
    name_id CHAR(12) NOT NULL COMMENT 'Ссылка на код ценной бумаги',
    name_listing VARCHAR(150) NOT NULL COMMENT 'Название листинга',
    FOREIGN KEY (name_id) REFERENCES stocks (id)
	)  COMMENT='Листинг ценной бумаги';
    
INSERT INTO level_listing (id, name_id, name_listing) VALUES (1, 'SBER', 'Голубые фишки');   
INSERT INTO level_listing (id, name_id, name_listing) VALUES (2, 'POLY', 'Второй эшелон'); 
INSERT INTO level_listing (id, name_id, name_listing) VALUES (3, 'LKOH', 'Голубые фишки');
INSERT INTO level_listing (id, name_id, name_listing) VALUES (4, 'IRAO', 'Второй эшелон');
INSERT INTO level_listing (id, name_id, name_listing) VALUES (5, 'GAZP', 'Голубые фишки');
INSERT INTO level_listing (id, name_id, name_listing) VALUES (6, 'MAIL', 'Второй эшелон');
INSERT INTO level_listing (id, name_id, name_listing) VALUES (7, 'GMKN', 'Голубые фишки');
INSERT INTO level_listing (id, name_id, name_listing) VALUES (8, 'YNDX', 'Голубые фишки');
INSERT INTO level_listing (id, name_id, name_listing) VALUES (9, 'MOEX', 'Голубые фишки');
INSERT INTO level_listing (id, name_id, name_listing) VALUES (10, 'HYDR', 'Второй эшелон');
INSERT INTO level_listing (id, name_id, name_listing) VALUES (11, 'LSNGP', 'Второй эшелон');
INSERT INTO level_listing (id, name_id, name_listing) VALUES (12, 'RASP', 'Третий эшелон');
INSERT INTO level_listing (id, name_id, name_listing) VALUES (13, 'SBERP', 'Голубые фишки');
INSERT INTO level_listing (id, name_id, name_listing) VALUES (14, 'RUAL', 'Второй эшелон');
INSERT INTO level_listing (id, name_id, name_listing) VALUES (15, 'ABRD', 'Третий эшелон');
INSERT INTO level_listing (id, name_id, name_listing) VALUES (16, 'SNGSP', 'Второй эшелон');
INSERT INTO level_listing (id, name_id, name_listing) VALUES (17, 'VTBR', 'Голубые фишки');
INSERT INTO level_listing (id, name_id, name_listing) VALUES (18, 'NVTK', 'Второй эшелон');
INSERT INTO level_listing (id, name_id, name_listing) VALUES (19, 'BANEP', 'Третий эшелон');
INSERT INTO level_listing (id, name_id, name_listing) VALUES (20, 'MTLRP', 'Третий эшелон');
    

CREATE TABLE stock_price (
	id INT NOT NULL PRIMARY KEY COMMENT "Идентификатор строки",
    name_id CHAR(12) NOT NULL COMMENT 'Ссылка на код ценной бумаги',
    name_id_bond CHAR(12) COMMENT 'Ссылка на код облигации',
    price_ao DECIMAL(6, 2) COMMENT 'Цена ценной бумаги на обыкновенные акции',
    price_pr DECIMAL(6, 2) COMMENT 'Цена ценной бумаги на привелигированные акции',
    price_bond DECIMAL(6, 2)  COMMENT 'Цена облигации',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Дата на отчетный период",
    FOREIGN KEY (name_id) REFERENCES stocks(id),
    FOREIGN KEY (name_id_bond) REFERENCES bond(id)
    ) COMMENT = 'Цена акций на отчетный период';
    
    
INSERT INTO stock_price (id, name_id, price_ao, created_at) VALUES (1, 'SBER', 243.06, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_ao, created_at) VALUES (2, 'POLY', 1002.98, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_ao, created_at) VALUES (3, 'LKOH', 4589.34, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_ao, created_at) VALUES (4, 'IRAO', 4.34, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_ao, created_at) VALUES (5, 'GAZP', 170.30, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_ao, created_at) VALUES (6, 'MAIL', 1703.74, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_ao, created_at) VALUES (7, 'GMKN', 1743.65, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_ao, created_at) VALUES (8, 'YNDX', 4986.32, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_ao, created_at) VALUES (9, 'MOEX', 149.04, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_ao, created_at) VALUES (10, 'HYDR', 0.61, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_pr, created_at) VALUES (11, 'LSNGP', 149.33, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_ao, created_at) VALUES (12, 'RASP', 109.42, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_pr, created_at) VALUES (13, 'SBERP', 240.34, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_ao, created_at) VALUES (14, 'RUAL', 37.19, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_ao, created_at) VALUES (15, 'ABRD', 138.84, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_pr, created_at) VALUES (16, 'SNGSP', 49.39, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_ao, created_at) VALUES (17, 'VTBR', 0.44, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_ao, created_at) VALUES (18, 'NVTK', 1109.92, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_pr, created_at) VALUES (19, 'BANEP', 895.65, '2020-07-11 10:43:42');
INSERT INTO stock_price (id, name_id, price_pr, created_at) VALUES (20, 'MTLRP', 58.33, '2020-07-11 10:43:42');


CREATE TABLE investment_portfolio (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
    tool VARCHAR(255) NOT NULL COMMENT 'Инструмент покупки/продажи (акции, облигации)',
    name_id CHAR(12) NOT NULL COMMENT 'Ссылка на код ценной бумаги',
    amount INT COMMENT 'Количество бумаг покупка/продажа',
    price_buy INT NOT NULL COMMENT 'Цена закрытия в дату покупки',
    price_sale INT NOT NULL COMMENT 'Цена закрытия в дату продажи',
    purchase_sum DECIMAL(4, 2) NOT NULL COMMENT 'Сумма покупки',
    sale_sum DECIMAL(4, 2) NOT NULL COMMENT 'Сумма продажи',
	dividends DECIMAL(4, 2) NOT NULL COMMENT 'Дивиденды ценной бумаги',
    income_loss DECIMAL(4, 2) COMMENT 'Доход',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Дата покупки",  
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Дата продажи или покупки сверху",
	FOREIGN KEY (name_id) REFERENCES stocks(id),
    FOREIGN KEY (name_id) REFERENCES bond(id)
    ) COMMENT = 'Портфель ценных бумаг, наполняется с помощью процедуры';



--Процедура на вывод информации об акции (наименование, цена, категоря компании, индекс);
CREATE PROCEDURE get_information (id_stocks CHAR(12)) 
BEGIN
    SELECT s.name AS 'Наименование компании', 
		p.price_ao AS 'Цена акции', 
        c.name_category AS 'Категоря гомпании',
        i.name_index AS 'Вхождения в индекс'
	FROM stocks s
    JOIN stock_price p
    ON s.id = p.name_id
    JOIN category c
    ON s.id = c.name_id
    JOIN index_name i 
    ON s.id = i.name_id
    WHERE s.id = id_stocks;
END //

DELIMITER ;
CALL get_information('SBER');

--Процедура которая выводят экономические показатели и информацию в зависимости от индекса компании. Вывод данных выбирался рандомно;
DELIMITER //
CREATE PROCEDURE index_info(str VARCHAR(45))
BEGIN
    CASE str
    WHEN "Голубые фишки"
    THEN
        SELECT s.name AS 'Наименование компании', s.id AS 'Код ценной бумаги', s.type_name AS 'Тип ценной бумаги',
        p.price_ao AS 'Цена', ed.revenue AS 'Выручка', ed.ebitda AS 'EBITDA', ed.debt AS 'Долг',
        c.name_category AS 'Категоря в отрасли'
        FROM stocks s
        JOIN stock_price p
        ON s.id = p.name_id
        JOIN economic_data ed
        ON s.id = ed.name_code_id
        JOIN category c 
        ON s.id = c.name_id;
	WHEN "Второй эшелон"
    THEN
        SELECT s.name AS 'Наименование компании', s.id AS 'Код ценной бумаги',
        ed.revenue AS 'Выручка'
        FROM stocks s
        JOIN economic_data ed
        ON s.id = ed.name_code_id
        ORDER BY ed.revenue DESC
		LIMIT 10;
	WHEN "Третий эшелон"
    THEN
        SELECT s.name AS 'Наименование компании', s.id AS 'Код ценной бумаги',
        AVG(ed.ebitda) OVER (PARTITION BY c.name_category ORDER BY ed.ebitda) AS 'Средняя EBITDA в секторе',
        MAX(ed.debt) OVER (PARTITION BY c.name_category) AS 'Максимальный долг в секторе'
        FROM stocks s
        JOIN economic_data ed
        ON s.id = ed.name_code_id
        JOIN category c
        ON s.id = c.name_id;
    END CASE;
END //
DELIMITER ;
CALL index_info('Голубые фишки');


    
    


    
    
    
    