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
