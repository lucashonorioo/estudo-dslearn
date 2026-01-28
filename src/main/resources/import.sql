INSERT INTO tb_user (name, email, password)VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password)VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password)VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, imag_gray_uri) VALUES ('Java Fundamentals','https://img.com/java.png','https://img.com/java-gray.png');
INSERT INTO tb_course (name, img_uri, imag_gray_uri) VALUES ('Spring Boot Expert','https://img.com/spring.png','https://img.com/spring-gray.png');
INSERT INTO tb_course (name, img_uri, imag_gray_uri) VALUES ('SQL & Databases','https://img.com/sql.png','https://img.com/sql-gray.png');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2024-01-10 10:00:00-03:00', TIMESTAMP WITH TIME ZONE '2024-04-10 23:59:59-03:00',1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2024-02-01 10:00:00-03:00', TIMESTAMP WITH TIME ZONE '2024-05-01 23:59:59-03:00',2);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('3.0', TIMESTAMP WITH TIME ZONE '2024-03-15 10:00:00-03:00', TIMESTAMP WITH TIME ZONE '2024-06-15 23:59:59-03:00',3);

INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Aula de Introdução','Visão geral do curso e apresentação dos objetivos', 1,'https://img.com/intro.png','1', 'https://youtube.com/watch?v=intro123',1);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Material de Apoio','Slides e PDFs para acompanhamento das aulas',2,'https://img.com/material.png','2','https://drive.google.com/material123',1);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Fórum de Dúvidas','Espaço para tirar dúvidas com os instrutores',3,'https://img.com/forum.png','3','https://plataforma.com/forum',2);

INSERT INTO tb_section (id, title, description, position, img_uri, resource_id, prerequisite_id) VALUES (1,'Introdução ao Curso','Primeiro contato com a plataforma e estrutura do curso',1,'https://img.com/intro.png',1,NULL);
INSERT INTO tb_section (id, title, description, position, img_uri, resource_id, prerequisite_id) VALUES (2,'Configuração do Ambiente','Passo a passo para configurar o ambiente de desenvolvimento',2,'https://img.com/setup.png',1,1);
INSERT INTO tb_section (id, title, description, position, img_uri, resource_id, prerequisite_id) VALUES (3,'Primeiro Projeto','Criação do primeiro projeto prático',3,'https://img.com/project.png',2,2);
