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

INSERT INTO users (name, email, password) VALUES
    ('João Silva', 'joao.silva@example.com', 'ds781'),
    ('Maria Oliveira', 'maria.oliveira@example.com', 'ds823'),
    ('Carlos Pereira', 'carlos.pereira@example.com', 'ds134'),
    ('Ana Costa', 'ana.costa@example.com', 'ds675'),
    ('Pedro Santos', 'pedro.santos@example.com', 'ds986'),
    ('Júlia Almeida', 'julia.almeida@example.com', 'ds432'),
    ('Lucas Lima', 'lucas.lima@example.com', 'ds591'),
    ('Beatriz Martins', 'beatriz.martins@example.com', 'ds250'),
    ('Fernando Souza', 'fernando.souza@example.com', 'ds307'),
    ('Clara Rocha', 'clara.rocha@example.com', 'ds738'),
    ('Gabriel Silva', 'gabriel.silva@example.com', 'ds491'),
    ('Mariana Oliveira', 'mariana.oliveira@example.com', 'ds620'),
    ('Ricardo Souza', 'ricardo.souza@example.com', 'ds194'),
    ('Lara Costa', 'lara.costa@example.com', 'ds860'),
    ('João Pereira', 'joao.pereira@example.com', 'ds574'),
    ('Isabela Lima', 'isabela.lima@example.com', 'ds429'),
    ('Rafael Rocha', 'rafael.rocha@example.com', 'ds980'),
    ('Camila Almeida', 'camila.almeida@example.com', 'ds732'),
    ('Igor Martins', 'igor.martins@example.com', 'ds112'),
    ('Débora Costa', 'debora.costa@example.com', 'ds846'),
    ('Vítor Souza', 'vitor.souza@example.com', 'ds351'),
    ('Mariana Lima', 'mariana.lima@example.com', 'ds864'),
    ('André Silva', 'andre.silva@example.com', 'ds719'),
    ('Júlio Pereira', 'julio.pereira@example.com', 'ds125'),
    ('Patrícia Rocha', 'patricia.rocha@example.com', 'ds492'),
    ('Bruno Almeida', 'bruno.almeida@example.com', 'ds268'),
    ('Larissa Martins', 'larissa.martins@example.com', 'ds361'),
    ('Felipe Costa', 'felipe.costa@example.com', 'ds490'),
    ('Renata Souza', 'renata.souza@example.com', 'ds522'),
    ('Gustavo Lima', 'gustavo.lima@example.com', 'ds987'),
    ('Luciana Rocha', 'luciana.rocha@example.com', 'ds270'),
    ('Felipe Pereira', 'felipe.pereira@example.com', 'ds850'),
    ('Silvia Martins', 'silvia.martins@example.com', 'ds126'),
    ('Rafael Costa', 'rafael.costa@example.com', 'ds984'),
    ('Carolina Almeida', 'carolina.almeida@example.com', 'ds176'),
    ('Eduardo Lima', 'eduardo.lima@example.com', 'ds529'),
    ('Roberta Rocha', 'roberta.rocha@example.com', 'ds620'),
    ('João Lima', 'joao.lima@example.com', 'ds917'),
    ('André Souza', 'andre.souza@example.com', 'ds745'),
    ('Renan Costa', 'renan.costa@example.com', 'ds835'),
    ('Karla Almeida', 'karla.almeida@example.com', 'ds327'),
    ('Gustavo Rocha', 'gustavo.rocha@example.com', 'ds974'),
    ('Samuel Martins', 'samuel.martins@example.com', 'ds472'),
    ('Lúcia Silva', 'lucia.silva@example.com', 'ds383'),
    ('Thiago Pereira', 'thiago.pereira@example.com', 'ds195'),
    ('Isabella Costa', 'isabella.costa@example.com', 'ds209'),
    ('Felipe Rocha', 'felipe.rocha@example.com', 'ds529'),
    ('Bruno Lima', 'bruno.lima@example.com', 'ds658'),
    ('Tamires Martins', 'tamires.martins@example.com', 'ds413'),
    ('Thiago Souza', 'thiago.souza@example.com', 'ds574');
