create table cidade (id bigint not null auto_increment, nome varchar(255) not null, estado_id bigint not null, primary key (id)) engine=MyISAM
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table estado (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table forma_pagamento (id bigint not null auto_increment, descricao varchar(255) not null, primary key (id)) engine=MyISAM
create table grupo (id bigint not null auto_increment, grupo_nome varchar(255), grupo_permissao_id bigint, primary key (id)) engine=MyISAM
create table permissao (id bigint not null auto_increment, descricao varchar(255) not null, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table produto (id bigint not null auto_increment, produto_status bit, produto_descricao varchar(255), produto_nome varchar(255), produto_preco decimal(19,2), produto_restaurante_id bigint, primary key (id)) engine=MyISAM
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2), cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=MyISAM
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=MyISAM
create table usuario (id bigint not null auto_increment, data_cadastro datetime not null, usuario_email varchar(255), usuario_nome varchar(255), usuario_senha varchar(255), grupo_grupo_id bigint, primary key (id)) engine=MyISAM
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo add constraint FKheoobedj312ajboc3s0gh4lib foreign key (grupo_permissao_id) references permissao (id)
alter table produto add constraint FKd2ckmyl7o7hbj3wwaipwqgsa3 foreign key (produto_restaurante_id) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario add constraint FKkv9341902vt5y09y3k4gqs0i5 foreign key (grupo_grupo_id) references grupo (id)
create table cidade (id bigint not null auto_increment, nome varchar(255) not null, estado_id bigint not null, primary key (id)) engine=MyISAM
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table estado (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table forma_pagamento (id bigint not null auto_increment, descricao varchar(255) not null, primary key (id)) engine=MyISAM
create table grupo (id bigint not null auto_increment, grupo_nome varchar(255), grupo_permissao_id bigint, primary key (id)) engine=MyISAM
create table permissao (id bigint not null auto_increment, descricao varchar(255) not null, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table produto (id bigint not null auto_increment, produto_status bit, produto_descricao varchar(255), produto_nome varchar(255), produto_preco decimal(19,2), produto_restaurante_id bigint, primary key (id)) engine=MyISAM
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2), cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=MyISAM
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=MyISAM
create table usuario (id bigint not null auto_increment, data_cadastro datetime not null, usuario_email varchar(255), usuario_nome varchar(255), usuario_senha varchar(255), grupo_grupo_id bigint, primary key (id)) engine=MyISAM
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo add constraint FKheoobedj312ajboc3s0gh4lib foreign key (grupo_permissao_id) references permissao (id)
alter table produto add constraint FKd2ckmyl7o7hbj3wwaipwqgsa3 foreign key (produto_restaurante_id) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario add constraint FKkv9341902vt5y09y3k4gqs0i5 foreign key (grupo_grupo_id) references grupo (id)
create table cidade (id bigint not null auto_increment, nome varchar(255) not null, estado_id bigint not null, primary key (id)) engine=MyISAM
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table estado (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table forma_pagamento (id bigint not null auto_increment, descricao varchar(255) not null, primary key (id)) engine=MyISAM
create table grupo (id bigint not null auto_increment, grupo_nome varchar(255), grupo_permissao_id bigint, primary key (id)) engine=MyISAM
create table permissao (id bigint not null auto_increment, descricao varchar(255) not null, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table produto (id bigint not null auto_increment, produto_status bit, produto_descricao varchar(255), produto_nome varchar(255), produto_preco decimal(19,2), produto_restaurante_id bigint, primary key (id)) engine=MyISAM
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2), cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=MyISAM
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=MyISAM
create table usuario (id bigint not null auto_increment, data_cadastro datetime not null, usuario_email varchar(255), usuario_nome varchar(255), usuario_senha varchar(255), grupo_grupo_id bigint, primary key (id)) engine=MyISAM
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo add constraint FKheoobedj312ajboc3s0gh4lib foreign key (grupo_permissao_id) references permissao (id)
alter table produto add constraint FKd2ckmyl7o7hbj3wwaipwqgsa3 foreign key (produto_restaurante_id) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario add constraint FKkv9341902vt5y09y3k4gqs0i5 foreign key (grupo_grupo_id) references grupo (id)
create table cidade (id bigint not null auto_increment, nome varchar(255) not null, estado_id bigint not null, primary key (id)) engine=MyISAM
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table estado (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table forma_pagamento (id bigint not null auto_increment, descricao varchar(255) not null, primary key (id)) engine=MyISAM
create table grupo (id bigint not null auto_increment, grupo_nome varchar(255), grupo_permissao_id bigint, primary key (id)) engine=MyISAM
create table permissao (id bigint not null auto_increment, descricao varchar(255) not null, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table produto (id bigint not null auto_increment, produto_status bit, produto_descricao varchar(255), produto_nome varchar(255), produto_preco decimal(19,2), produto_restaurante_id bigint, primary key (id)) engine=MyISAM
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2), cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=MyISAM
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=MyISAM
create table usuario (id bigint not null auto_increment, data_cadastro datetime not null, usuario_email varchar(255), usuario_nome varchar(255), usuario_senha varchar(255), grupo_grupo_id bigint, primary key (id)) engine=MyISAM
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo add constraint FKheoobedj312ajboc3s0gh4lib foreign key (grupo_permissao_id) references permissao (id)
alter table produto add constraint FKd2ckmyl7o7hbj3wwaipwqgsa3 foreign key (produto_restaurante_id) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario add constraint FKkv9341902vt5y09y3k4gqs0i5 foreign key (grupo_grupo_id) references grupo (id)
create table cidade (id bigint not null auto_increment, nome varchar(255) not null, estado_id bigint not null, primary key (id)) engine=MyISAM
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table estado (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table forma_pagamento (id bigint not null auto_increment, descricao varchar(255) not null, primary key (id)) engine=MyISAM
create table grupo (id bigint not null auto_increment, grupo_nome varchar(255), grupo_permissao_id bigint, primary key (id)) engine=MyISAM
create table permissao (id bigint not null auto_increment, descricao varchar(255) not null, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table produto (id bigint not null auto_increment, produto_status bit, produto_descricao varchar(255), produto_nome varchar(255), produto_preco decimal(19,2), produto_restaurante_id bigint, primary key (id)) engine=MyISAM
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2), cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=MyISAM
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=MyISAM
create table usuario (id bigint not null auto_increment, data_cadastro datetime not null, usuario_email varchar(255), usuario_nome varchar(255), usuario_senha varchar(255), grupo_grupo_id bigint, primary key (id)) engine=MyISAM
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo add constraint FKheoobedj312ajboc3s0gh4lib foreign key (grupo_permissao_id) references permissao (id)
alter table produto add constraint FKd2ckmyl7o7hbj3wwaipwqgsa3 foreign key (produto_restaurante_id) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario add constraint FKkv9341902vt5y09y3k4gqs0i5 foreign key (grupo_grupo_id) references grupo (id)
create table cidade (id bigint not null auto_increment, nome varchar(255) not null, estado_id bigint not null, primary key (id)) engine=MyISAM
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table estado (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table forma_pagamento (id bigint not null auto_increment, descricao varchar(255) not null, primary key (id)) engine=MyISAM
create table grupo (id bigint not null auto_increment, grupo_nome varchar(255), grupo_permissao_id bigint, primary key (id)) engine=MyISAM
create table permissao (id bigint not null auto_increment, descricao varchar(255) not null, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table produto (id bigint not null auto_increment, produto_status bit, produto_descricao varchar(255), produto_nome varchar(255), produto_preco decimal(19,2), produto_restaurante_id bigint, primary key (id)) engine=MyISAM
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2), cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=MyISAM
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=MyISAM
create table usuario (id bigint not null auto_increment, data_cadastro datetime not null, usuario_email varchar(255), usuario_nome varchar(255), usuario_senha varchar(255), grupo_grupo_id bigint, primary key (id)) engine=MyISAM
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo add constraint FKheoobedj312ajboc3s0gh4lib foreign key (grupo_permissao_id) references permissao (id)
alter table produto add constraint FKd2ckmyl7o7hbj3wwaipwqgsa3 foreign key (produto_restaurante_id) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario add constraint FKkv9341902vt5y09y3k4gqs0i5 foreign key (grupo_grupo_id) references grupo (id)
create table cidade (id bigint not null auto_increment, nome varchar(255) not null, estado_id bigint not null, primary key (id)) engine=MyISAM
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table estado (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table forma_pagamento (id bigint not null auto_increment, descricao varchar(255) not null, primary key (id)) engine=MyISAM
create table grupo (id bigint not null auto_increment, grupo_nome varchar(255), grupo_permissao_id bigint, primary key (id)) engine=MyISAM
create table permissao (id bigint not null auto_increment, descricao varchar(255) not null, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table produto (id bigint not null auto_increment, produto_status bit, produto_descricao varchar(255), produto_nome varchar(255), produto_preco decimal(19,2), produto_restaurante_id bigint, primary key (id)) engine=MyISAM
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2), cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=MyISAM
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=MyISAM
create table usuario (id bigint not null auto_increment, data_cadastro datetime not null, usuario_email varchar(255), usuario_nome varchar(255), usuario_senha varchar(255), grupo_grupo_id bigint, primary key (id)) engine=MyISAM
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo add constraint FKheoobedj312ajboc3s0gh4lib foreign key (grupo_permissao_id) references permissao (id)
alter table produto add constraint FKd2ckmyl7o7hbj3wwaipwqgsa3 foreign key (produto_restaurante_id) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario add constraint FKkv9341902vt5y09y3k4gqs0i5 foreign key (grupo_grupo_id) references grupo (id)
create table cidade (id bigint not null auto_increment, nome varchar(255) not null, estado_id bigint not null, primary key (id)) engine=MyISAM
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table estado (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table forma_pagamento (id bigint not null auto_increment, descricao varchar(255) not null, primary key (id)) engine=MyISAM
create table grupo (id bigint not null auto_increment, grupo_nome varchar(255), grupo_permissao_id bigint, primary key (id)) engine=MyISAM
create table permissao (id bigint not null auto_increment, descricao varchar(255) not null, nome varchar(255) not null, primary key (id)) engine=MyISAM
create table produto (id bigint not null auto_increment, produto_status bit, produto_descricao varchar(255), produto_nome varchar(255), produto_preco decimal(19,2), produto_restaurante_id bigint, primary key (id)) engine=MyISAM
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2), cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=MyISAM
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=MyISAM
create table usuario (id bigint not null auto_increment, data_cadastro datetime not null, usuario_email varchar(255), usuario_nome varchar(255), usuario_senha varchar(255), grupo_grupo_id bigint, primary key (id)) engine=MyISAM
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo add constraint FKheoobedj312ajboc3s0gh4lib foreign key (grupo_permissao_id) references permissao (id)
alter table produto add constraint FKd2ckmyl7o7hbj3wwaipwqgsa3 foreign key (produto_restaurante_id) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario add constraint FKkv9341902vt5y09y3k4gqs0i5 foreign key (grupo_grupo_id) references grupo (id)
