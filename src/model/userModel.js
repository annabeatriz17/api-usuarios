const pool = require("../config/database");

const getUsers = async (name) => {
    const result = await pool.query("SELECT * FROM usuarios");
    return result.rows;
};

const getUserById = async (id) => {
    const result = await pool.query("SELECT * FROM usuarios WHERE id = $1", [id]);
    return result.rows[0];
};

const updatePost = async (id, name, email, password) => {
    const { name, email, password } = data;
    const result = await pool.query("UPDATE usuarios SET name = $1, email = $2, password = $3 WHERE id = $4 RETURNING *", [name, email, password, id]);
    return result.rows[0];
};

const createUser = async (name, email, password, photo) => {
    const result = await pool.query(
        "INSERT INTO usuarios (name, email, password) VALUES ($1, $2, $3) RETURNING *",
        [name, email, password, photo]
    );
    return result.rows[0];
};

const deleteUser = async (id) => {
    const result = await pool.query("DELETE FROM usuarios WHERE id = $1", [id]);
    return result.rows;
};

module.exports = { getUsers, getUserById, updateUser, createUser, deleteUser };