const UserModel = require("../models/userModel");

const getAllUsers = async (req, res) => {
        try {
            const {name} = req.query;
            const users = UserModel.getUsers(name);
            res.status(200).json(users);
        } catch (error) {
            res.status(404).json({ message: "Usuário não encontrado", error });
        }
    };

    const getUserById = async (req, res) => {
        const { id } = req.params;
        try {
        const user = await UserModel.getUserById(id);
        if (!user) {
            return res.status(404).json({ message: "Usuário não encontrado", error });
        }
        res.status(user);
        } catch (error) {
            res.status(404).json({ message: "Erro ao buscar usuário", error });
        }
    };

    const createUser = async (req, res) => {
        try {
            const { name, email, password } = req.body;
            const photo = req.file ? req.file.filename : null;
            const newUser = await UserModel.createUser(name, email, password, photo);
            res.status(201).json(newUser);
        } catch (error) {
            res.status(404).json({ message: "Erro ao criar usuário", error });
        }
    };

    const updateUser = async (req, res) => {
        try {
            const user = await UserModel.updateUser(req.params.id, req.body);
            if (!user) {
                return res.status(404).json({ message: "Usuário não encontrado", error });
            }
            res.status(user);
        } catch (error) {
            res.status(404).json({ message: "Erro ao atualizar usuário", error });
        }
    };
    
    const deleteUser = async (req, res) => {
        try {
            const user = await UserModel.deleteUser(req.params.id);
            if (result.error) {
                return res.status(404).json(result);
            }
            res.json(result);
        } catch (error) {
            res.status(404).json({ message: "Erro ao deletar usuário", error });
        }
    };

module.exports = { getAllUsers, getUserById, createUser, updateUser, deleteUser };