--carga de especialidades
INSERT INTO tb_especialidades (nome, descricao) VALUES ('Alergia e imunologia', 'é a área que trata de invasores alérgenos e as formas de defesa do organismo.');
INSERT INTO tb_especialidades (nome, descricao) VALUES ('Anestesiologia', 'cuida da aplicação de anestésicos e analgésicos em procedimentos e do manejo da dor.');
INSERT INTO tb_especialidades (nome, descricao) VALUES ('Cardiologia', 'responsável pela realização de procedimentos cirúrgicos em diferentes partes do corpo.');
INSERT INTO tb_especialidades (nome, descricao) VALUES ('Clínica médica', 'responsável pela realização de procedimentos cirúrgicos em diferentes partes do corpo.');
INSERT INTO tb_especialidades (nome, descricao) VALUES ('Dermatologia', 'trata de doenças da pele e seus anexos.');
--carga de medicos
INSERT INTO tb_medicos (nome, email, crm, atende_convenio, id_especialidade) VALUES ('Fábio Knost', 'fknost@gmail.com', 'CRM 21458 RS', true, 4);
INSERT INTO tb_medicos (nome, email, crm, atende_convenio, id_especialidade) VALUES ('Beatriz Pacheco', 'biapacheco@gmail.com', 'CRM 11254 RS', true, 5);
INSERT INTO tb_medicos (nome, email, crm, atende_convenio, id_especialidade) VALUES ('Silvia Botelho', 'drasilviabotelho@gmail.com', 'CRM 16225 RS', false, 2);
--carga de usuários
INSERT INTO tb_logins (usuario, senha) VALUES ('ayrton.senna', '123456');
INSERT INTO tb_logins (usuario, senha) VALUES ('alain.prost', '123456');
INSERT INTO tb_logins (usuario, senha) VALUES ('rubens.barrichello', '123456');
--carga de autoridades
INSERT INTO tb_autoridades (autoridade) VALUES ('admin');
INSERT INTO tb_autoridades (autoridade) VALUES ('funcionario');
INSERT INTO tb_autoridades (autoridade) VALUES ('medico');
--carga de autoridades de logins
INSERT INTO tb_logins_autoridades (id_login, id_autoridade) VALUES (1, 1);
INSERT INTO tb_logins_autoridades (id_login, id_autoridade) VALUES (1, 2);
INSERT INTO tb_logins_autoridades (id_login, id_autoridade) VALUES (1, 3);
INSERT INTO tb_logins_autoridades (id_login, id_autoridade) VALUES (2, 2);
INSERT INTO tb_logins_autoridades (id_login, id_autoridade) VALUES (2, 3);
INSERT INTO tb_logins_autoridades (id_login, id_autoridade) VALUES (3, 3);
--carga de convenios
INSERT INTO tb_convenios (nome, taxa, observacao) VALUES ('PRIVADO', 0.00, 'Sem convênio privado');
INSERT INTO tb_convenios (nome, taxa, observacao) VALUES ('UNIMED', 85.00, 'Convênio privado');
INSERT INTO tb_convenios (nome, taxa, observacao) VALUES ('LIBERTY', 85.00, 'Convênio privado');
INSERT INTO tb_convenios (nome, taxa, observacao) VALUES ('IPÊ', 85.00, 'Convênio público');
--carga de endereços
INSERT INTO tb_enderecos (logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES ('Rua XV de Novembro', '345', 'N/A', 'Centro', '91333-568', 'Porto Alegre', 'RS');
INSERT INTO tb_enderecos (logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES ('Av. Fortaleza', '1002', 'N/A', 'Centro', '91133-254', 'Gravataí', 'RS');
INSERT INTO tb_enderecos (logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES ('Rua dos Alcântaras', '25', 'sala 3652', 'Centro', '97654-764', 'Cachoeirinha', 'RS');
INSERT INTO tb_enderecos (logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES ('Rua João Saldanha', '659', 'N/A', 'Centro', '93234-240', 'Guaíba', 'RS');
INSERT INTO tb_enderecos (logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES ('Av. do Parque', '477', 'N/A', 'Centro', '91233-110', 'Porto Alegre', 'RS');
--carga de pacientes
INSERT INTO tb_pacientes (nome, cpf, sexo, email, data_cadastro, id_endereco) VALUES ('Betina Brenda Alana da Silva', '394.718.750-56', 'FEMININO', 'betina_brenda@gmail.com', '2022-04-03 10:00:00', 2);
INSERT INTO tb_pacientes (nome, cpf, sexo, email, data_cadastro, id_endereco) VALUES ('Manuela Sophie Manuela', '619.725.520-07', 'FEMININO', 'manuelas@gmail.com', '2021-12-11 14:00:00', 1);
INSERT INTO tb_pacientes (nome, cpf, sexo, email, data_cadastro, id_endereco) VALUES ('Filipe Mário da Silva', '185.384.300-84', 'MASCULINO', 'fmario@gmail.com', '2022-09-01 15:45:00', 2);
INSERT INTO tb_pacientes (nome, cpf, sexo, email, data_cadastro, id_endereco) VALUES ('Paulo Márcio da Costa', '974.463.280-10', 'MASCULINO', 'pmcosta@gmail.com', '2020-11-05 17:10:00', 3);
INSERT INTO tb_pacientes (nome, cpf, sexo, email, data_cadastro, id_endereco) VALUES ('Fernando Lorenzo Galvão', '378.943.810-39', 'MASCULINO', 'flg25@gmail.com', '2021-02-23 08:45:00', 1);
--carga de funcionarios
INSERT INTO tb_funcionarios (nome, cpf, email, id_endereco) VALUES ('Ayrton Senna', '449.616.740-95', 'senna@gmail.com', 4);
INSERT INTO tb_funcionarios (nome, cpf, email, id_endereco) VALUES ('Alain Prost', '273.644.930-42', 'prost@gmail.com', 5);
INSERT INTO tb_funcionarios (nome, cpf, email, id_endereco) VALUES ('Rubens Barrichello', '702.392.820-00', 'barrichello@gmail.com', 5);
INSERT INTO tb_funcionarios (nome, cpf, email, id_endereco) VALUES ('Michael Schumacher', '881.269.610-40', 'schumacher@gmail.com', 4);
INSERT INTO tb_funcionarios (nome, cpf, email, id_endereco) VALUES ('Nelson Piquet', '343.277.680-22', 'piquet@gmail.com', 1);
--carga de consultas
INSERT INTO tb_consultas (data_cadastro, data_atendimento, taxa, id_funcionario, id_paciente, id_medico, id_convenio) VALUES ('2023/02/05 14:15:00', '2023/02/07 14:15:00', 180.0, 1, 2, 1, 1);
INSERT INTO tb_consultas (data_cadastro, data_atendimento, taxa, id_funcionario, id_paciente, id_medico, id_convenio) VALUES ('2023/02/05 09:30:00', '2023/02/10 13:45:00', 220.0, 2, 2, 1, 1);
INSERT INTO tb_consultas (data_cadastro, data_atendimento, taxa, id_funcionario, id_paciente, id_medico, id_convenio) VALUES ('2023/03/14 08:45:00', '2023/03/17 16:00:00', 195.0, 1, 3, 2, 1);
INSERT INTO tb_consultas (data_cadastro, data_atendimento, taxa, id_funcionario, id_paciente, id_medico, id_convenio) VALUES ('2023/03/15 13:40:00', '2023/03/16 17:15:00', 77.0, 2, 1, 3, 1);
INSERT INTO tb_consultas (data_cadastro, data_atendimento, taxa, id_funcionario, id_paciente, id_medico, id_convenio) VALUES ('2023/03/22 09:30:00', '2023/03/29 15:45:00', 250.0, 3, 1, 3, 1);
--carga de notas fiscais
INSERT INTO tb_notas_fiscais(valor, data_emissao, id_consulta) VALUES (180.0, '2023/04/10 11:15:00', 1);
INSERT INTO tb_notas_fiscais(valor, data_emissao, id_consulta) VALUES (220.0, '2023/04/10 15:30:00', 2);
INSERT INTO tb_notas_fiscais(valor, data_emissao, id_consulta) VALUES (195.0, '2023/04/12 10:00:00', 3);
INSERT INTO tb_notas_fiscais(valor, data_emissao, id_consulta) VALUES (77.0, '2023/04/12 14:35:00', 4);
INSERT INTO tb_notas_fiscais(valor, data_emissao, id_consulta) VALUES (250.0, '2023/04/12 16:25:00', 5);