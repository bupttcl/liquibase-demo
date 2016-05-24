--liquibase formatted sql

--changeset pms:4007-1
CREATE TABLE table1 (
  id int(11) NOT NULL,
  name varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM;
ALTER TABLE  table1 CHANGE  id  id INT( 11 ) AUTO_INCREMENT;
ALTER TABLE  table1 CHANGE  name  firstname VARCHAR( 255 );
INSERT INTO table1 (id, firstname) VALUES (NULL, 'name1'),(NULL, 'name2'), (NULL, 'name3');
--rollback drop table table1;