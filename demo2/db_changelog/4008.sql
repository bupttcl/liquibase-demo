--liquibase formatted sql
 
--changeset pms:4008-1
CREATE TABLE table2 (
  id int(11) NOT NULL,
  name varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM;
--rollback drop table table2;
 
--changeset pms:4008-2
ALTER TABLE  table2 CHANGE  id  id INT( 11 ) AUTO_INCREMENT;
--rollback ALTER TABLE  table2 CHANGE  id  id INT( 11 ) NOT NULL;
 
--changeset pms:4008-3
ALTER TABLE  table2 CHANGE  name  firstname VARCHAR( 255 );
--rollback ALTER TABLE  table2 CHANGE  firstname  name VARCHAR( 255 );
 
--changeset pms:4008-4
INSERT INTO table2 (id, firstname) VALUES (NULL, 'name1'),(NULL, 'name2'), (NULL, 'name3');
--rollback DELETE FROM table2 WHERE firstname IN('name1','name2','name3');

--changeset pms:4008-5
INSERT INTO table2 (id, firstname) VALUES (NULL, 'name5'),(NULL, 'name6'), (NULL, 'name7');
--rollback DELETE FROM table2 WHERE firstname IN('name5','name6','name7');