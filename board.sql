create table board(
    num number(5) primary key,
    pass varchar2(30),
    name varchar2(30),
    email varchar2(30),
    title varchar2(30),
    content varchar2(1000),
    readcount number(4) default 0,
    writedate date default sysdate
);

create SEQUENCE board_seq start with 1 increment by 1;

insert into board(num, name, email, pass, title, content) VALUES(board_seq.nextval, '������', 'mds@a.com', '1234', 'ù�湮', '�ݰ����ϴ�.');

insert into board(num, name, email, pass, title, content) VALUES(board_seq.nextval, '������', 'mds@a.com', '1234', '���', '���־��.');

insert into board(num, name, email, pass, title, content) VALUES(board_seq.nextval, '��þ', 'jc@a.com', '1111', '����ī��', '�Ͻ��Դϴ�.');

insert into board(num, name, email, pass, title, content) VALUES(board_seq.nextval, '���ػ�', 'ghs@a.com', '0000', '�ϳ�������', '������ ���־��.');

SELECT
    *
FROM board;