const pool = require("../config/database");

const getPosts = async (title) => {
    if (!title) {
        const result = await pool.query(`SELECT post.*, usuarios.name AS usuario_name 
            FROM post 
            LEFT JOIN usuarios ON post.user_id = usuarios.id`
        );
        return result.rows
    } else {
        const result = await pool.query(`SELECT post.*, usuarios.name AS usuario_name 
        FROM post 
        LEFT JOIN usuarios ON post.user_id = usuarios.id WHERE post.title ILIKE $1`, [`%${title}%`]
        );
        return result.rows
    }
}

const getPostById = async (id) => {
    const result = await pool.query (`SELECT post.*, usuarios.name AS usuario_name 
        FROM post 
        LEFT JOIN usuarios ON post.user_id = usuarios.id 
        WHERE post.id = $1`, [id])
        return result.rows   
}

const createPost = async (title, content, user_id) => {
    const result = await pool.query (`INSERT INTO post (title, content, user_id) VALUES ($1, $2, $3)`, [title, content, user_id])
    return result.rows
}

const updatePost = async (id, title, content) => {
    const result = await pool.query (`UPDATE post SET title = $1, content = $2 WHERE id = $3`, [title, content, id])
    return result.rows
}

const deletePost = async (id) => {
    const result = await pool.query (`DELETE FROM post WHERE id = $1`, [id])
    return result.rows
}

module.exports = { getPosts, getPostById, createPost, updatePost, deletePost };