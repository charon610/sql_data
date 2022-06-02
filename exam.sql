DROP TABLE t_member CASCADE CONSTRAINTS;

CREATE TABLE t_member (
    id varchar2(10) PRIMARY KEY,
    pwd varchar2(10),
    name varchar2(50),
    email varchar2(50),
    joinDate date default sysdate
);


INSERT INTO t_member
VALUES('lee','1212','�̼���','lee@test.com', sysdate);

INSERT INTO t_member
VALUES('kim','1212','������','kim@test.com', sysdate);

INSERT INTO t_member
VALUES('park','1212','�����','park@test.com', sysdate);

SELECT * FROM t_member; 

UPDATE t_member set name='�̼���' where id='lee';

DELETE FROM t_member WHERE id = 'lee';