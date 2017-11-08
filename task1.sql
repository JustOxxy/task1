BEGIN TRANSACTION;

/* Create a table */
CREATE TABLE invoices(Id uuid PRIMARY KEY, Name character varying, created_at timestamp);

/* Create few records in this table */
INSERT INTO invoices VALUES('b8a66412-0bd6-4152-9e19-8cb7dcaa33cd', 'Накладная 1', '2017-05-20 15:57:44.351015');
INSERT INTO invoices VALUES('140a360e-178b-4daa-a520-9778cd2ab0d3', 'Накладная 2',
'2017-05-20 15:57:44.351015');
INSERT INTO invoices VALUES('fe421df5-a389-43e8-916e-b97f22224b66', 'Накладная 30',
'2017-05-20 15:57:44.351015');
INSERT INTO invoices VALUES('465ccdc4-b974-4e5d-824f-97070c9deb30', 'Накладная 19',
'2017-05-20 15:57:44.351015');


SELECT * FROM invoices ORDER BY replace(name,'Накладная','')+0 desc;
