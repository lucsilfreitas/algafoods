  create table cidade (
  id bigint not null auto_increment,
  nome_cidade VARCHAR(80) not null,
  nome_estado VARCHAR(80) not null,
  
  primary key (id)
) engine=InnoDB default charset=utf8;