use shop;


-- https://www.coderstool.com/sql-test-data-generator
# insert into customers (uuid, name, surname, email, phone, sex, city, address, postcode, amount_of_orders, cost_of_orders, registration_at, last_order_at)
# VALUES (uuid(), '{{firstname}}', '{{surname}}', '{{password}}' , '{{email}}', '{{tel}}', '{{sex}}', '{{country}}' '{{city}}', '{{street}}', '{{postcode}}', {{prime 1 100}}, {{price 100 20000}}, '{{date 2015-01-01 2016-01-01}} {{time}}', '{{date 2016-01-01 2017-01-01}} {{time}}'),


insert into customers (uuid, name, surname, password, email, phone, sex, country, city, address, postcode, amount_of_orders, cost_of_orders, registration_at, last_order_at)
values (uuid(), 'Sheena', 'Mccallister', 'denver' , 'albertinaseely4@florence.com', '+254-3128-298-109', '{{sex}}', 'Japan', 'High Point', '9806 Steele Avenue', 'LL3 8HJ', 3, 15391.09, '2015-10-06 11:41:05', '2016-08-02 03:53:36'),
    (uuid(), 'Xiao', 'Perez', 'badger' , 'marinaword09@gmail.com', '+965-5359-012-402', '{{sex}}', 'Switzerland', 'Baltimore', '6542 Nash Circle', 'WV1 4WB', 2, 4337.82, '2015-01-29 22:57:59', '2016-11-03 01:39:49'),
    (uuid(), 'Cecila', 'Swanson', 'friday' , 'jonell-heckman41109@dynamics.frankfurt.museum', '+591-7956-567-997', '{{sex}}', 'El Salvador', 'Wichita', '6532 Carruthers Lane', 'WV71 3XH', 61, 4391.52, '2015-05-11 11:04:10', '2016-01-10 03:55:27'),
    (uuid(), 'Felisha', 'Espinal', 'angel' , 'peter110@yahoo.com', '+506-6231-714-061', '{{sex}}', 'Kuwait', 'Appleton', '6653 Back Street', 'PL58 0XV', 17, 6058.89, '2015-01-03 13:19:52', '2016-08-08 21:44:36'),
    (uuid(), 'Soraya', 'Beaudoin', 'michigan' , 'hilton_harp@filters.com', '+225-5801-234-186', '{{sex}}', 'Monaco', 'Havre de Grace', '3933 Sexa Street', 'BD44 3KY', 7, 14608.88, '2015-08-01 19:38:20', '2016-12-03 22:47:03'),
    (uuid(), 'Garland', 'Hurd', 'engineer' , 'natishayoon65@hotmail.com', '+20-1492-448-114', '{{sex}}', 'Armenia', 'Concord', '6684 Waller Road', 'B3 5JA', 61, 8110.52, '2015-05-27 15:05:03', '2016-08-22 18:02:53'),
    (uuid(), 'Leeanna', 'Seward', 'banana' , 'corrina_torres507@write.com', '+65-2761-851-684', '{{sex}}', 'South Africa', 'Abilene', '9597 Eastbank', 'SY5 8OO', 13, 1722.82, '2015-07-31 18:23:09', '2016-08-14 23:12:57'),
    (uuid(), 'Brendon', 'Nesmith', 'emmanuel' , 'mavis.curran12@hotmail.com', '+673-9366-700-577', '{{sex}}', 'Fiji', 'Columbus', '9043 Sawley', 'OX9 7PF', 13, 11908.57, '2015-06-19 17:42:28', '2016-05-19 20:23:07'),
    (uuid(), 'Wilburn', 'Clayton', 'albert' , 'suzi.manuel95325@boats.com', '+56-0336-501-968', '{{sex}}', 'Somalia', 'Providence', '4979 Manchet', 'CT3 3GU', 59, 3709.13, '2015-07-22 22:17:10', '2016-10-30 06:26:22'),
    (uuid(), 'Leonie', 'Tripp', 'doctor' , 'chanelle806@gmail.com', '+595-5876-116-755', '{{sex}}', 'Mauritania', 'Fort Collins', '0322 Carnoustie', 'CM45 1MF', 5, 8048.36, '2015-01-13 20:41:52', '2016-11-13 03:25:50');