CREATE USER OT IDENTIFIED BY Orcl1234;

GRANT CONNECT, RESOURCE, DBA TO OT;

--connect with OT USER sqlplus ot@localhost/ABCPDB1


CREATE TABLE ot.keys(id NUMBER GENERATED BY DEFAULT AS IDENTITY, key VARCHAR2(50) NOT NULL, value VARCHAR2(50) NOT NULL, PRIMARY KEY(id));

INSERT INTO ot.keys(key,value) VALUES('99999999999','omelo@github.com');

SELECT * FROM ot.keys WHERE key = '99999999999'AND rownum = 1;