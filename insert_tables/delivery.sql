use shop;

# (uuid(), '{{prime 1 5}}', '{{postcode}}', '{{city}}', '{{street}}'),

insert into delivery(uuid, delivery_system, postcode, city, address)
values (uuid(), '1', 'SN28 8ZT', 'Louisville', '2870 Bramdean'),
    (uuid(), '3', 'ST8 9HP', 'Ontario', '4803 Anchor Street'),
    (uuid(), '1', 'DA27 3DI', 'Sterling Heights', '8327 Pochard Street');