require('dotenv').config();
const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const { GoogleGenerativeAI } = require("@google/generative-ai");
const apiKey = process.env.GEMINI_API_KEY;

const app = express();
const port = 3000;
app.use(cors());
app.use(bodyParser.json());

console.log(apiKey)
app.post("/generate", async (req, res) => { // Changed to POST
    try {
        const genAI = new GoogleGenerativeAI(apiKey);
        const model = genAI.getGenerativeModel({ model: "gemini-1.5-flash" });
        const prompt = req.body.prompt; // Get the prompt from the request body
        const result = await model.generateContent(prompt);
        res.send(result.response.text());
    } catch (error) {
        console.error("Error generating content:", error);
        res.status(500).send("Error generating content. Please try again later.");
    }
});

app.listen(port, () => {
    console.log(`Server listening at http://localhost:${port}`);
});

// ... (rest of your server code)