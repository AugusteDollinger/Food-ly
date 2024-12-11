<?php
include 'base-start.php';
if (!isset($_SESSION['id'])) {
    header('Location: login.php');
    exit();
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Interactive AI</title>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jockey+One&family=Outfit:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
<main>
    <nav>
        <a href="index.php" id="logo">LOGO</a>
        <a href="dashboard.php">Admin dashboard</a>
        <a href="show-favorite.php">Favorites</a>
        <a href="logout.php">Logout</a>
    </nav>
    <h1 id="index-title">Interactive AI</h1>

    <?php
    include "index-includes/prompt-form.php";
    ?>

    <div id="output">Enter your preferences</div>
</main>
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

            const health = document.createElement('p');
            health.textContent = `Health: ${dish.health}`;
            dishDiv.appendChild(health);

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
        health : "healthy/unhealthy and why (less than 300 characters)",
        ingredient: {
            1 : "ingredient1(only give one ingredient name and only name it in the singular)",
            2 : "ingredient2(only give one ingredient name and only name it in the singular)",
            3 : "ingredient3(only give one ingredient name and only name it in the singular)",
            4 : "etc...",
        }
        instruction(less than 400 characters) : "whatever",
    } each one of the recipies should contains some of these ingredients :${document.getElementById('seleted-ingredient').textContent} that is a ${document.getElementById('select-by-type')}, that is from ${document.getElementById('select-by-origine').value} that has a  ${document.getElementById('select-by-regime').value}. If some of the information given have nothing to do with food please ignore it.`;
        submitPrompt(phpPrompt);
    }
</script>
</body>
</html>
