use shop;


# https://www.coderstool.com/sql-test-data-generator
# INSERT INTO sellers (uuid, name, surname, name_of_shop, email, phone, city, address, postcode, amount_of_sales, cost_of_sales, rating, country)
# VALUES (uuid(), '{{firstname}}', '{{surname}}', '{{company}}', '{{email}}', '{{tel}}', '{{city}}', '{{street}}', '{{postcode}}', {{prime 1 100}}, {{price 100 20000}}, {{prime 1 10}}, {{country}});



INSERT INTO sellers (uuid, name, surname, name_of_shop, email, phone, city, address, postcode, amount_of_sales, cost_of_sales, rating, country)
VALUES (uuid(), 'Kathey', 'Pratt', 'Karl ', 'selina_lofton-rainey49@willow.com', '+264-7717-445-254', 'Nashua', '7685 Crow', 'LL2 9TF', 53, 4287.88, 2, 'San Marino'),
       (uuid(), 'Alaina', 'Ray', 'Lab Software Corp', 'lien-piazza68@tap.com', '+40-5045-421-158', 'Costa Mesa', '9608 Turf', 'NE78 7BI', 37, 3697.88, 5, 'Tuvalu'),
       (uuid(), 'Tommie', 'Cronin', 'Paradise International Corporation', 'marcelina_qualls-everson@statutes.kharkiv.ua', '+33-6614-795-922', 'Orem', '4192 Edgeware Lane', 'WC4 7GK', 53, 2176.84, 5, 'Micronesia'),
       (uuid(), 'Keshia', 'Brody', 'Sydney ', 'joni242@yahoo.com', '+852-4465-119-252', 'Fort Lauderdale', '4718 Bickerdike Avenue', 'SY52 3RT', 67, 3519.43, 3, 'Montenegro'),
       (uuid(), 'Adrian', 'Holcombe', 'Fuji Industries ', 'donette.caldwell0077@looking.kunstunddesign.museum', '+34-4506-871-290', 'Durham', '7405 Greswell Street', 'FY59 2UV', 71, 19383.01, 7, 'India'),
       (uuid(), 'Pei', 'Mcarthur', 'Ethics Holdings Corp', 'jaleesacruse64302@gmail.com', '+595-2237-386-612', 'Deltona', '5099 Frederick', 'DD31 7HO', 61, 11299.24, 3, 'Samoa'),
       (uuid(), 'Verena', 'Childs', 'Newsletter International Ltd', 'randi2908@hotmail.com', '+51-6266-635-849', 'Racine', '3911 Golden Circle', 'OX92 6LO', 61, 6693.4, 5, 'Australia'),
       (uuid(), 'Kaleigh', 'Krueger', 'Carlos Industries SIA', 'lauren-edmondson@examined.gouv.ci', '+62-2319-549-821', 'Round Lake Beach', '2746 Scarborough Road', 'WF68 7BK', 13, 11311.58, 2, 'Mauritius'),
       (uuid(), 'Georgia', 'Goodman', 'Plain Holdings A.G', 'asia21735@sponsor.call', '+231-4030-123-394', 'Simi Valley', '7155 Ballantine Road', 'N2 4XV', 73, 2600.74, 7, 'Kosovo'),
       (uuid(), 'Gemma', 'Riggins', 'Softball Energy B.V', 'andrea_herbert@him.com', '+56-7140-471-708', 'Lancaster', '5903 Pimhole Circle', 'NE41 1JY', 73, 2182.37, 5, 'Guinea'),
       (uuid(), 'Rebecca', 'Sander', 'Cb Holdings ', 'trey_reilly91@photos.pars', '+92-9415-453-905', 'Anaheim', '1620 Simmondley Lane', 'CV38 4IF', 2, 18727.56, 3, 'Belize'),
       (uuid(), 'Lelah', 'Albright', 'Lb Inc', 'dena03825@blond.com', '+684-1616-303-918', 'Salem', '2793 Back Lane', 'GU9 0FP', 13, 19403.8, 7, 'Zimbabwe'),
       (uuid(), 'Hyacinth', 'Valadez', 'G Software Corporation', 'sindy0801@hotmail.com', '+39-0783-346-746', 'Atlanta', '5213 Cheadle Street', 'N7 2WQ', 3, 19859.89, 5, 'Madagascar'),
       (uuid(), 'Domenic', 'Hooker', 'Oxide SIA', 'jefferey02966@craig.vlaanderen', '+254-1361-616-286', 'Mobile', '0686 Buckley', 'RM2 1ZF', 1, 2713.8, 1, 'Angola'),
       (uuid(), 'Marni', 'Mccarthy', 'Specializing Energy ', 'karlyncorey@beneficial.com', '+597-7517-528-269', 'Columbus', '3971 Churnet Street', 'CO8 1ZD', 5, 16298.72, 7, 'Cape Verde'),
       (uuid(), 'Wendell', 'Hutton', 'Seasonal Software B.V', 'thanh_muhammad0315@stretch.com', '+966-4618-295-028', 'Grayslake', '9048 Beechfield Avenue', 'TF78 7DI', 67, 12183.52, 7, 'Lebanon'),
       (uuid(), 'Mozella', 'Fuller', 'Lake Energy GmbH', 'micha-albertson@hotmail.com', '+212-8442-301-717', 'Nashua', '6321 Lupton', 'HU4 5FV', 67, 12658.64, 1, 'Syria'),
       (uuid(), 'Grover', 'Sigler', 'Social Energy ', 'noel50859@yahoo.com', '+965-0062-693-608', 'Tucson', '5197 Kirby Lane', 'NN1 8IY', 71, 4993.02, 1, 'Netherlands'),
       (uuid(), 'Petronila', 'Mccarter', 'Xerox Stores SIA', 'vonda_huang45156@hotmail.com', '+508-2163-098-908', 'McHenry', '9901 Lupton Lane', 'L1 1DD', 61, 4775.53, 5, 'Sri Lanka'),
       (uuid(), 'Mittie', 'Laporte', 'Brussels Holdings SIA', 'marisol-keener7221@hotmail.com', '+357-5115-405-752', 'Lancaster', '5130 Rowan', 'BN4 7ZY', 61, 8287.92, 7, 'Israel'),
       (uuid(), 'Agatha', 'Spinks', 'Ought Inc', 'kathyrn.tinsley@yahoo.com', '+66-9257-801-926', 'Vero Beach', '9366 Walmersley', 'PR9 1BA', 97, 10664.69, 7, 'Chile');