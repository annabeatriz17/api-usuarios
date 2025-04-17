const UserModel = require("../model/userModel");

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
            const { name, email, password } = req.body;
            const user = await UserModel.updateUser(req.params.id, name, email, password);
            if (!updateUser) {
                return res.status(404).json({ message: "Usuário não encontrado", error });
            }
            res.status(updateUser);
        } catch (error) {
            res.status(404).json({ message: "Erro ao atualizar usuário", error });
        }
    };
    
    const deleteUser = async (req, res) => {
        try {
            const message = await UserModel.deleteUser(req.params.id);
            res.status(200).json(message);
        } catch (error) {
            res.status(500).json({ message: "Erro ao deletar usuário", error });
        }
    };
    

module.exports = { getAllUsers, getUserById, createUser, updateUser, deleteUser };