create table jobs_user
(
juid int primary key auto_increment,
jutel varchar(11) not null unique,
juname varchar(32) not null,
jupass varchar(32) not null,
jupower int default 0
)