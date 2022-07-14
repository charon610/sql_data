DROP TABLE member;

CREATE table member(
name varchar2(10),
userid varchar2(10),
pwd varchar2(10),
email varchar2(20),
phone char(13),
admin number(1) default 0,  -- 0:사용자, 1:관리자
primary key(userid)
);

insert INTO member values('마석도', 'sukdo', '1234', 'msd@naver.com', '010-5477-7853', 0);
insert INTO member values('장이수', 'issue', '1234', 'jys@naver.com', '010-1127-3413', 1);
insert INTO member values('장첸', 'chen', '1234', 'chen@naver.com', '010-4457-7122', 0);

SELECT
    *
FROM member;

commit;