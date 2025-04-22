CREATE DATABASE users;

\c users;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    photo TEXT
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO users (name, email, password) VALUES 
('Beatriz Lima', 'bealima@gmail.com', 'ds564'),
('Luana', 'luana@gmail.com', 'ds564'),
('Parma', 'parma@gmail.com', 'ds564'),
('Leme', 'leme@gmail.com', 'ds564');

INSERT INTO post (title, content, user_id) VALUES
    ('Post 1', 'Conteúdo do post 1', 1),
    ('Post 2', 'Conteúdo do post 2', 2),
    ('Post 3', 'Conteúdo do post 3', 3);