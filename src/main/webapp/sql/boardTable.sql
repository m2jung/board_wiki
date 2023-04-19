
CREATE TABLE board (
seq number(10),
id varchar2(20),
name varchar2(20),
subject varchar2(20),
title varchar2(50),
content clob,
hit NUMBER(30) DEFAULT 0,
logdate DATE DEFAULT sysdate
);

CREATE SEQUENCE seq_board NOCACHE NOCYCLE;

