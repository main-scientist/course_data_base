use shop;


# https://www.coderstool.com/sql-test-data-generator
# INSERT INTO sellers (uuid, name, surname, name_of_shop, email, phone, city, address, postcode, amount_of_sales, cost_of_sales, rating, country)
# VALUES (uuid(), '{{firstname}}', '{{surname}}', '{{company}}', '{{email}}', '{{tel}}', '{{city}}', '{{street}}', '{{postcode}}', {{prime 1 100}}, {{price 100 20000}}, {{prime 1 10}}, {{country}});


insert into sellers (uuid, name, surname, password, name_of_shop, email, phone, country, city, address, postcode, amount_of_sales, cost_of_sales, rating)
values (uuid(), 'Alvera', 'Ault-Race', 'antonio', 'Sql A.G', 'lakendra-ashworth3202@quizzes.mitsue.nara.jp', '+241-3221-639-896', 'Austria', 'Chesapeake', '8190 Wilson Road', 'DG31 4WI', 43, 2144.7, 2),
    (uuid(), 'Gail', 'Marion', 'august', 'Continuously Holdings ', 'camelia_hendrickson2@hotmail.com', '+43-0092-319-006', 'Chad', 'Trenton', '6149 Dacre Street', 'FY4 7JA', 13, 15161.39, 2),
    (uuid(), 'Ernie', 'Battles-Mason', 'winner', 'Threat Industries Corp', 'oraziegler4854@tvs.com', '+234-4066-066-752', 'Macedonia', 'Macon', '3663 Blackstock', 'PL9 3VW', 31, 16455.43, 1),
    (uuid(), 'Teisha', 'Oreilly', 'marley', 'Club B.V', 'milly-wolford838@family.com', '+213-6897-312-377', 'Maldives', 'Deltona', '0986 Syddall Road', 'RM4 9EK', 3, 3902.63, 2),
    (uuid(), 'Jacquiline', 'Custer', 'xavier', 'Size Energy S.A', 'edythebaber@peterson.com', '+260-1487-130-824', 'Kuwait', 'Berkeley', '8771 Tig Road', 'EN0 1ZV', 23, 14240.67, 7),
    (uuid(), 'Elisabeth', 'Hays', 'einstein', 'Ken International Company', 'odelia.clary5364@yahoo.com', '+351-5766-060-821', 'Tuvalu', 'Johnson City', '4446 Delamer Road', 'HA90 3NU', 29, 9198.48, 2),
    (uuid(), 'Liz', 'Quintanilla', 'jaguar', 'Against Software LLC', 'reva-sills@idaho.com', '+42-1824-745-421', 'Maldives', 'Oklahoma City', '7248 Crowton Circle', 'SN48 9VX', 53, 10302.35, 2),
    (uuid(), 'Sebrina', 'Warren', 'knight', 'Nextel Corp', 'gladisbrumfield@hotmail.com', '+237-0385-073-086', 'Slovakia', 'Ocala', '7679 Marlwood Road', 'CA40 6MY', 53, 18832.2, 7),
    (uuid(), 'Barbie', 'Windsor', 'butterfly', 'Respective Holdings Corp', 'marylouise18519@retailer.com', '+251-2657-357-350', 'Palau', 'Panama City', '1569 Norris', 'NP88 1FU', 79, 5996.69, 2),
    (uuid(), 'Anneliese', 'Nance', 'beauty', 'Permissions Holdings LLC', 'marylin727@announcement.agdenes.no', '+43-7064-590-308', 'Jordan', 'St. Louis', '6586 Stoke Circle', 'TD80 4GB', 29, 12387.31, 3);