
 CREATE TABLE board (
seq number(10),
id varchar2(20),
subject varchar2(20),
content clob,
hit NUMBER(30),
logdate date
);

CREATE SEQUENCE seq_board NOCACHE NOCYCLE;

