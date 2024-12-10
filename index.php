<!DOCTYPE html>
<html>
<head>
    <title>Interactive AI</title>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</head>
<body>
<a href="dashboard.php">Admin dashboard</a>

<?php
include "index-includes/prompt-form.php";
?>

<div id="output">Enter your preferences</div>
<script>
    function displayDishes(jsonString) {
        const outputDiv = document.getElementById('output');
        outputDiv.innerHTML = ''; // Clear previous content

        const dishes = JSON.parse(jsonString);

        dishes.forEach(dish => {
            const dishDiv = document.createElement('div');
            dishDiv.style.border = '1px solid black';
            dishDiv.style.margin = '10px';
            dishDiv.style.padding = '10px';

            const name = document.createElement('h2');
            name.textContent = `Name: ${dish.name}`;
            dishDiv.appendChild(name);

            const origin = document.createElement('p');
            origin.textContent = `Origin: ${dish.origin}`;
            dishDiv.appendChild(origin);

            const type = document.createElement('p');
            type.textContent = `Type: ${dish.type}`;
            dishDiv.appendChild(type);

            const regime = document.createElement('p');
            regime.textContent = `Regime: ${dish.regime}`;
            dishDiv.appendChild(regime);

            const level = document.createElement('p');
            level.textContent = `Level: ${dish.level}`;
            dishDiv.appendChild(level);

            const ingredients = document.createElement('p');
            ingredients.textContent = 'Ingredients:';
            const ingredientsList = document.createElement('ul');
            for (const key in dish.ingredient) {
                const ingredient = document.createElement('li');
                ingredient.textContent = dish.ingredient[key];
                ingredientsList.appendChild(ingredient);
            }
            dishDiv.appendChild(ingredients);
            dishDiv.appendChild(ingredientsList);

            const instruction = document.createElement('p');
            instruction.textContent = `Instruction: ${dish.instruction}`;
            dishDiv.appendChild(instruction);
            const favoriteButton = document.createElement('button');
            favoriteButton.textContent = 'Add to favorites';
            favoriteButton.onclick = () => {
                axios.post('http://localhost/php/Food-ly/favorite.php', { dish: dish })
                    .then(response => {
                        console.log('Dish added to favorites:', response.data);
                    })
                    .catch(error => {
                        console.error('Error adding dish to favorites:', error);
                    });
            };
            dishDiv.appendChild(favoriteButton);
            outputDiv.appendChild(dishDiv);
        });
    }
    const outputDiv = document.getElementById('output');

    function submitPrompt(phpPrompt)  {
        const prompt = phpPrompt;
        if (prompt === "") {
            outputDiv.textContent = "Please enter a prompt.";
            return;
        }

        outputDiv.textContent = "Thinking...";

        axios.post('http://localhost:3000/generate', { prompt: prompt })
            .then(response => {
                let jsonString = response.data;
                jsonString = jsonString.slice(8, jsonString.length - 4);
                displayDishes(jsonString);
                JSON.parse(jsonString);
                axios.post('http://localhost/php/Food-ly/store.php', { data: jsonString })
                    .then(response => {
                        console.log('Data stored:', response.data);
                    })
                    .catch(error => {
                        console.error('Error storing data:', error);
                    });
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
    function createPrompt() {
        const phpPrompt = `can you find 5 dishes of the form and only return json table with the following fields : {
        name : "whatever",
        origin : "whatever",
        type : "whatever",
        diet : "whatever",
        level : "easy/medium/hard",
        ingredient: {
            1 : "ingredient1(only give one ingredient name)",
            2 : "ingredient2(only give one ingredient name)",
            3 : "ingredient3(only give one ingredient name)",
            4 : "etc...",
        }
        instruction(less than 400 characters) : "whatever",
    } each one of the recipies could possibly contain ${document.getElementById('seleted-ingredient').textContent} that is a ${document.getElementById('select-by-type')}, that is from ${document.getElementById('select-by-origine').value} that has a  ${document.getElementById('select-by-regime').value}. if any of the information given seem off just send random dishes you find.`;
        submitPrompt(phpPrompt);
    }

</script>
</body>
</html>
