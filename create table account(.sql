create table account(
    ac_id varchar2(20 char) primary key,
    ac_pw varchar2(30 char) not null,
    ac_name varchar2(20 char) not null,
    ac_addr varchar2(100 char) not null,
    ac_like varchar2(20 char) not null,
    ac_pic varchar2(200 char) not null
)

insert into account values('test','1234','테스트','서울특별시 종로구 종로1 종로1가','도쿄','a.jpg')
insert into account values('hg','1234','형규','서울특별시 종로구 종로1 종로1가','도쿄','aa.jpg')

select * from account;
drop table Account cascade constraint purge;

create table review_board(
	r_no number(5) primary key,
	r_author varchar2(20 char) not null,
	r_title varchar2(20 char)not null,
	r_content varchar2(300 char)not null,
	r_img varchar2(200 char)not null,
	r_date date not null
);

create sequence review_board_seq;

insert into review_board values(review_board_seq.nextval,'test','제목1','내용1','a.jpg',sysdate);

select * from review_board;

create table free_board(
    f_no number(5) primary key,
	f_author varchar2(20 char) not null,
	f_title varchar2(30 char) not null,
	f_content varchar2(300 char) not null,
	f_img varchar2(300 char) not null,
	u_date date not null
)

create sequence free_board_seq;

insert into free_board values(free_board_seq.nextval,'test','제목1','내용1','a.jpg',sysdate);

select * from free_board;