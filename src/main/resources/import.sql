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

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Introdução ao Curso','Primeiro contato com a plataforma e estrutura do curso',1,'https://img.com/intro.png',1,NULL);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Configuração do Ambiente','Passo a passo para configurar o ambiente de desenvolvimento',2,'https://img.com/setup.png',1,1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Primeiro Projeto','Criação do primeiro projeto prático',3,'https://img.com/project.png',2,2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2024-01-10 11:00:00-03:00', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2024-01-10 11:00:00-03:00', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (3, 1, TIMESTAMP WITH TIME ZONE '2024-01-10 12:00:00-03:00', null, true, true);


INSERT INTO tb_lesson (id, title, position, section_id) VALUES (1, 'Introdução ao Curso', 1, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (1, 'Apresentação geral do curso e objetivos', 'https://video.com/intro');

INSERT INTO tb_lesson (id, title, position, section_id) VALUES (2, 'Configuração do Ambiente', 2, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (2, 'Instalação do Java, IDE e dependências', 'https://video.com/setup');

INSERT INTO tb_lesson (id, title, position, section_id) VALUES (3, 'Primeiro Projeto', 3, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (3, 'Criação do primeiro projeto Spring Boot', 'https://video.com/project');

INSERT INTO tb_lesson (id, title, position, section_id) VALUES (4, 'Desafio Prático', 4, 1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (4, 'Implementar uma API simples seguindo o padrão apresentado', 10, 7, 1.0, TIMESTAMP '2024-06-30 23:59:59');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (4, 1, 2);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Nova aula disponível no curso', TIMESTAMP WITH TIME ZONE '2024-01-15 09:00:00-03:00', false, '/courses/1/offers/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Atividade liberada para entrega', TIMESTAMP WITH TIME ZONE '2024-01-16 10:30:00-03:00', false, '/lessons/4/task', 2);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Atividade corrigida pelo instrutor', TIMESTAMP WITH TIME ZONE '2024-01-18 18:45:00-03:00', true, '/deliveries/2', 2);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_count, offer_id, user_id, lesson_id) VALUES ('https://github.com/lucas/repo/commit/abc123', TIMESTAMP WITH TIME ZONE '2024-01-20 09:15:00-03:00', 0, null, 0, 1, 1, 4);
INSERT INTO tb_deliver (uri, moment, status, feedback, correct_count, offer_id, user_id, lesson_id) VALUES ('https://drive.google.com/file/d/entrega001', TIMESTAMP WITH TIME ZONE '2024-01-21 14:40:00-03:00', 1, 'Bom trabalho, tudo certo!', 10, 1, 2, 4);
INSERT INTO tb_deliver (uri, moment, status, feedback, correct_count, offer_id, user_id, lesson_id) VALUES ('https://drive.google.com/file/d/entrega002', TIMESTAMP WITH TIME ZONE '2024-01-22 18:05:00-03:00', 2, 'Faltou implementar os endpoints de update.', 6, 1, 3, 4);
