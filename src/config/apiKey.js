require("dotenv").config();

const apiKeyMiddleware = (req, res, next) => {
    const clientKey = req.headers['x-api-key'];
    const serverKey = process.env.API_KEY;

}