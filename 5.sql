create database count;
use count;

create table tb_caleg (
id int (11) PRIMARY KEY not null auto_increment,
name varchar (35),
id_partai int (11),
earn_vote int (4) );

create table tb_partai (
id_partai int (11) PRIMARY KEY not null auto_increment,
name varchar (35) );


INSERT INTO tb_partai(name) VALUES 
('Cilacap Santai'),
('Cilacap Sejahtera');

INSERT INTO tb_caleg(name,id_partai,earn_vote) VALUES 
('Sera',2,100),
('Dobleh',1,99);

SELECT * FROM tb_caleg;
SELECT * FROM tb_partai;

INSERT INTO tb_partai(name) VALUES 
('Cilacap Aman');

UPDATE tb_partai SET name='Cilacap Makmur' where name='Cilacap Sejahterea';

INSERT INTO tb_caleg(name,id_partai,earn_vote) VALUES
('Kabur',3,69),
('Astina',3,21);

UPDATE tb_caleg SET name='Is Bos', id_partai=2, earn_vote=70 where name='Sera';

DELETE from tb_caleg where name='Astina';

SELECT tb_caleg.*, tb_partai.name from tb_caleg INNER JOIN tb_partai ON tb_partai.id_partai=tb_caleg.id_partai;

SELECT tb_caleg.*, tb_partai.name from tb_caleg INNER JOIN tb_partai ON tb_partai.id_partai=tb_caleg.id_partai where tb_caleg.name='Kabur';






