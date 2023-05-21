use shop;


-- https://www.coderstool.com/sql-test-data-generator
# insert into customers (uuid, name, surname, email, phone, sex, city, address, postcode, amount_of_orders, cost_of_orders, registration_at, last_order_at)
# VALUES (uuid(), '{{firstname}}', '{{surname}}', '{{email}}', '{{tel}}', '{{sex}}', '{{city}}', '{{street}}', '{{postcode}}', {{prime 1 100}}, {{price 100 20000}}, '{{date 2015-01-01 2016-01-01}} {{time}}', '{{date 2016-01-01 2017-01-01}} {{time}}');


insert into customers (uuid, name, surname, email, phone, sex, city, address, postcode, amount_of_orders, cost_of_orders, registration_at, last_order_at)
values (uuid(), 'Krysta', 'Welch', 'daniellebeasley28@illinois.com', '+268-5757-993-939', '{{sex}}', 'Salinas', '8557 Chadwick Road', 'CV3 5WV', 83, 1179.78, '2015-01-28 15:39:52', '2016-09-18 16:48:43'),
    (uuid(), 'Charlie', 'Linn', 'ressie.ingle@strain.com', '+216-0446-177-565', '{{sex}}', 'North Charleston', '4041 Stovell Lane', 'WF9 4LX', 2, 14536.72, '2015-04-05 04:36:19', '2016-10-28 10:58:31'),
    (uuid(), 'Jacquline', 'Blanchard', 'rea9617@hotmail.com', '+241-2640-048-859', '{{sex}}', 'Santa Clara', '9863 Shanklyn Circle', 'PO86 6PH', 19, 6496.61, '2015-08-10 18:45:06', '2016-05-04 05:33:47'),
    (uuid(), 'Laquita', 'Maness', 'danyelle550@comic.com', '+596-2198-670-403', '{{sex}}', 'Hagerstown', '2414 Vaughan Lane', 'LN32 7XF', 13, 11111.08, '2015-04-06 09:33:02', '2016-02-24 21:56:42'),
    (uuid(), 'Emilia', 'Fulkerson', 'breanne.bell3@gmail.com', '+670-7448-344-715', '{{sex}}', 'Overland Park', '6781 Radcliffe Circle', 'SK8 1FD', 3, 14239.32, '2015-03-21 17:12:20', '2016-11-26 09:59:25'),
    (uuid(), 'Melany', 'Mcnair', 'monet.armstrong@freely.com', '+39-6656-418-664', '{{sex}}', 'Manchester', '5757 Hazelbadge Avenue', 'LD25 3LN', 7, 2760.53, '2015-12-09 14:40:19', '2016-08-28 20:35:57'),
    (uuid(), 'Wendi', 'Bustamante', 'james.gulley@yahoo.com', '+94-2814-452-945', '{{sex}}', 'Norwalk', '8148 Ling Road', 'NR5 2ZR', 29, 2878.46, '2015-05-02 05:07:07', '2016-08-12 01:29:11'),
    (uuid(), 'Marjorie', 'Nadeau', 'faycowles@defendant.gateway.museum', '+36-6368-764-159', '{{sex}}', 'Modesto', '4123 Higher Avenue', 'SA0 2SB', 3, 7661.72, '2015-02-08 04:17:23', '2016-08-25 03:57:51'),
    (uuid(), 'Sona', 'Bohn', 'felica.mears34@hotmail.com', '+679-9580-657-190', '{{sex}}', 'San Diego', '5572 Netherhouse Circle', 'TN4 9CZ', 79, 4018.76, '2015-11-28 15:02:23', '2016-08-26 20:00:37'),
    (uuid(), 'Sacha', 'Hamblin', 'jenettelangston6@np.com', '+94-6772-268-033', '{{sex}}', 'Kissimmee', '3712 Stableford Circle', 'MK18 2VY', 7, 8628.31, '2015-02-05 14:41:42', '2016-08-19 10:51:35'),
    (uuid(), 'Nella', 'Kauffman', 'jaime96575@elephant.com', '+255-8961-234-266', '{{sex}}', 'Chula Vista', '4496 Carmichael Circle', 'N9 5CM', 3, 12228.26, '2015-01-15 22:55:12', '2016-10-03 00:53:12'),
    (uuid(), 'Mitsue', 'Brantley', 'tayna_knoll30@gmail.com', '+27-7145-997-680', '{{sex}}', 'Yonkers', '4218 Medlock Circle', 'MK93 4KD', 19, 5385.31, '2015-12-22 12:10:00', '2016-05-12 01:36:12'),
    (uuid(), 'Denyse', 'Batts', 'ginny-wertz2@working.com', '+62-0334-435-269', '{{sex}}', 'Hartford', '0242 Opal Avenue', 'N6 5FF', 43, 3972.6, '2015-08-23 07:28:42', '2016-06-03 07:36:15'),
    (uuid(), 'Cassie', 'Messina', 'latoyia764@gmail.com', '+31-1278-851-182', '{{sex}}', 'Columbia', '1867 Crab Circle', 'SP50 3XR', 2, 677.59, '2015-09-12 02:37:37', '2016-04-13 08:02:01'),
    (uuid(), 'Stephanie', 'Summerlin', 'charlette_finn3494@gmail.com', '+20-4632-009-583', '{{sex}}', 'Gastonia', '3655 Ryde Circle', 'DE27 7LO', 13, 15890.28, '2015-06-01 18:33:56', '2016-09-08 10:26:57'),
    (uuid(), 'Kecia', 'Ayers', 'merlin-dowdy0245@reggae.health.nz', '+352-8320-128-433', '{{sex}}', 'Melbourne', '5601 Southmoor Circle', 'LL97 2XL', 67, 19078.92, '2015-03-18 17:46:56', '2016-06-02 08:15:38'),
    (uuid(), 'Shira', 'Pressley', 'shawnawahl63@gmail.com', '+689-7495-012-374', '{{sex}}', 'Provo', '0963 Estate Street', 'WV9 3KY', 3, 13418.07, '2015-11-26 23:56:01', '2016-09-01 09:26:14'),
    (uuid(), 'Cathy', 'Arevalo', 'veola-severson4@gmail.com', '+964-9488-629-965', '{{sex}}', 'Billings', '6462 Hempcroft Street', 'KY30 4TF', 11, 11916.99, '2015-09-24 12:43:04', '2016-07-17 06:51:45'),
    (uuid(), 'Lizzette', 'Gates', 'cherly6661@gmail.com', '+42-7546-191-439', '{{sex}}', 'Vallejo', '0725 Highdales Avenue', 'WA23 8DQ', 37, 13998.64, '2015-01-01 11:16:52', '2016-12-27 00:48:21'),
    (uuid(), 'Dayna', 'Lau-Hollis', 'royce_ferreira95685@yahoo.com', '+263-9391-806-978', '{{sex}}', 'Yonkers', '6837 Whoolden Street', 'TS1 9PH', 31, 17352.51, '2015-04-19 09:41:03', '2016-11-01 22:15:28');