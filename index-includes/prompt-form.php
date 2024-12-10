<?php
$sql = 'SELECT * FROM ingredient group by LIBELLE_INGREDIENT';
$result = $base->prepare($sql);
$result->execute();
$ingredients = [];
while ($row = $result->fetch()) {
    $ingredients[] = $row['LIBELLE_INGREDIENT'];
}
?>
<div id="create-prompt-form">
    <ul>
        <li>
            <input type="text" id="search-an-ingredient" placeholder="Select your ingredients" >
        </li>
        <li>
            <p>Selected ingredient : </p>
        </li>
        <li>
            <label for="select-by-origine">Select the origin :</label>
        </li>
        <li>
            <label for="select-by-type">Select the type :</label>
        </li>
        <li>
            <label for="select-by-regime">Select the diet :</label>
        </li>
    </ul>
    <ul>
        <li>
            <select name="select-by-ingredient[]" id="select-by-ingredient" multiple>
            </select>
        </li>
        <li>
            <pre id="seleted-ingredient" style="font-weight: 900"></pre>
        </li>
        <li>
            <select name="select-by-origine" id="select-by-origine">
                <?php
                $sql = 'SELECT * FROM origine';
                $result = $base->prepare($sql);
                $result->execute();
                while ($row = $result->fetch()) {
                    echo '<option value="'.$row['LIBELLE_ORIGINE'].'">'.$row['LIBELLE_ORIGINE'].'</option>';
                }
                ?>
            </select>
        </li>
        <li>
            <select name="select-by-type" id="select-by-type">
                <?php
                $sql = 'SELECT * FROM type';
                $result = $base->prepare($sql);
                $result->execute();
                while ($row = $result->fetch()) {
                    echo '<option value="'.$row['LIBELLE_TYPE'].'" '.($row['LIBELLE_TYPE'] == 'No specific type' ? 'selected' : '').'>'.$row['LIBELLE_TYPE'].'</option>';
                }
                ?>
            </select>
        </li>
        <li>
            <select name="select-by-regime" id="select-by-regime">
                <?php
                $sql = 'SELECT * FROM regime';
                $result = $base->prepare($sql);
                $result->execute();
                while ($row = $result->fetch()) {
                    echo '<option value="'.$row['LIBELLE_REGIME'].'">'.$row['LIBELLE_REGIME'].'</option>';
                }
                ?>
            </select>
        </li>
    </ul>
</div>
<button onclick="createPrompt()">Create menu</button>

<script>
    const selectIngredients = document.getElementById('select-by-ingredient');
    const ingredients = <?php echo json_encode($ingredients); ?>;
    const input = document.getElementById('search-an-ingredient');
    const ingredientOptions = document.getElementById('select-by-ingredient');
    let selectedIngredients = [];
    function filterIngredients(ingredient) {
        const search = input.value.toLowerCase();
        return ingredient.toLowerCase().search(search) !== -1;
    }
    function showIngredients() {
        selectIngredients.innerHTML = '';
        ingredients.filter(filterIngredients).forEach(ingredient => {
            const option = document.createElement('option');
            option.value = ingredient;
            option.textContent = ingredient;
            option.classList.add('ingredient-option');
            selectIngredients.appendChild(option);
        });
    }
    input.addEventListener('input', () => {
        showIngredients();
    });
    window.addEventListener('load', () => {
        showIngredients();
    });
    ingredientOptions.addEventListener('change', () => {
        if (selectedIngredients.includes(ingredientOptions.value)) {
            selectedIngredients.splice(selectedIngredients.indexOf(ingredientOptions.value), 1);
            console.log(selectedIngredients)
        }
        else {
            selectedIngredients.push(ingredientOptions.value);
            console.log(selectedIngredients)
        }
        showIngredients()

        document.getElementById('seleted-ingredient').textContent = selectedIngredients.join(', ');

    });
</script>
