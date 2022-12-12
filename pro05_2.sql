use shop;

create table test(id varchar(20), pw varchar(20));

insert into test values ('admin', '1234');
insert into test values ('kkt', '4444');

commit;

show databases;

show tables;

desc test;

select * from test;

drop table member;
create table member(
id varchar(20) primary key,
pw varchar(300) not null, 
email varchar(100) not null);

alter table member add createdDate datetime default now();
alter table member add modifiedDate datetime default now();

create table board (
    id bigint not null auto_increment comment 'PK',
    title varchar(100) not null comment '제목',
    content text not null comment '내용',
    writer varchar(20) not null comment '작성자',
    hits int not null comment '조회 수',
    delete_yn enum('Y', 'N') not null comment '삭제 여부',
    created_date datetime not null comment '생성일',
    modified_date datetime comment '수정일',
    primary key (id)
) comment '게시판';

desc board;

select * from board;
delete from board where id=1;
commit;


