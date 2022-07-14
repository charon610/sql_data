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

insert into board(num, name, email, pass, title, content) VALUES(board_seq.nextval, '마동석', 'mds@a.com', '1234', '첫방문', '반갑습니다.');

insert into board(num, name, email, pass, title, content) VALUES(board_seq.nextval, '마동석', 'mds@a.com', '1234', '김밥', '맛있어요.');

insert into board(num, name, email, pass, title, content) VALUES(board_seq.nextval, '장첸', 'jc@a.com', '1111', '유미카츠', '일식입니다.');

insert into board(num, name, email, pass, title, content) VALUES(board_seq.nextval, '강해상', 'ghs@a.com', '0000', '하남돼지집', '삽겹살이 맛있어요.');

SELECT
    *
FROM board;