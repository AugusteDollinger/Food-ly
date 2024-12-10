const outputDiv = document.getElementById('output');

function submitPrompt(phpPrompt)  {
    alert('working on it')
    const prompt = phpPrompt;
    if (prompt === "") {
        outputDiv.textContent = "Please enter a prompt.";
        return;
    }

    outputDiv.textContent = "Thinking..."; // Show a loading message

    axios.post('http://localhost:3000/generate', { prompt: prompt }) // Changed to POST
        .then(response => {
            outputDiv.textContent = response.data;
        })
        .catch(error => {
            let errorMessage = "Error fetching data.";
            if (error.response) {
                errorMessage = `Error ${error.response.status}: ${error.response.data}`;
            } else if (error.request) {
                errorMessage = "No response received from the server.";
            } else {
                errorMessage = `Error: ${error.message}`;
            }
            outputDiv.textContent = errorMessage;
            console.error("Axios error:", error);
        });
}