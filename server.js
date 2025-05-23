require("dotenv").config();
const express = require("express");
const cors = require("cors");
const userRoutes = require("./src/routes/userRoutes");
const postRoutes = require("./src/routes/postRoutes");
const setupSwagger = require("./src/config/swagger"); // Swagger aqui
const path = require("path");


const app = express();
app.use(cors());
app.use(express.json());
setupSwagger(app);
app.use("/uploads", express.static(path.join(__dirname, "uploads")));

app.use("/api/users", userRoutes); // /api/users
app.use("/api/post", postRoutes);

const PORT = process.env.PORT || 3030;
app.listen(PORT, () => {
    console.log(`🚀 Servidor rodando em http://localhost:${PORT}`);
});