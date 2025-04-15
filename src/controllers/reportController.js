const { format } = require("@fast-csv/format");
const PDFDocument = require("pdfkit");

const userModel = require("../models/userModel");

const exportUserCSV = async (req, res) => {
    try {
        const users = await userModel.getUsers();

        res.setHeader("Content-disposition", "attachment; filename=tickets.csv");
        res.setHeader("Content-type", "text/csv");

        const csvStream = format({ headers: true });
        csvStream.pipe(res);

        users.forEach((user) => {
            csvStream.write({
                id: user.id,
                name: user.name,
                email: user.email,
                password: user.password,
            });
        });
        csvStream.end();
    } catch (error) {
        res.status(500).json({ error: "Erro ao gerar o CSV" });
    }
};

const exportUserPDF = async (req, res) => {
    try {
        const users = await userModel.getUsers();

        res.setHeader("Content-Type", "application/pdf");
        res.setHeader("Content-Disposition", "inline; filename=users.pdf");

        doc.fontSize(10).text("Relatório de usuários", { align: "center" });
        doc.moveDown(0.5);

        users.forEach((user) => {
            doc.text(
                `${user.id} | ${user.name} | ${user.email}`
            );
        });

        doc.end();
    } catch (error) {
        res.status(500).json({ error: "Erro ao gerar o PDF" });
    }
};

module.exports = { exportUserCSV, exportUserPDF };