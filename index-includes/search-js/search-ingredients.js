const searchBlock = document.getElementById('search-an-ingredient');
const formDiv = document.getElementById('formDiv');
searchBlock.addEventListener('input' , () => {
    searchIngredient();
});
document.addEventListener('DOMContentLoaded', () => {
    searchIngredient();
});
let selectedIngredient = [];
function searchIngredient() {
    axios.post('http://localhost/php/Food-ly/index-includes/prompt-form.php', {search: searchBlock.value, selectedIngredient: selectedIngredient})
        .then(response => {
            formDiv.innerHTML = response.data;
        })
        .catch(error => {
            console.error("Axios error:", error);
        });
}
let optionIngredient = document.body;
function setOptionIngredient() {
    optionIngredient = document.getElementById('select-by-ingredient');
    if (optionIngredient) {
        clearInterval(optionIngredientInterval);
        console.log('good')
    }
}
const optionIngredientInterval = setInterval(setOptionIngredient, 50);
optionIngredient.addEventListener('change', () => {
    if (selectedIngredient.includes(optionIngredient.value)) {
        selectedIngredient.splice(selectedIngredient.indexOf(optionIngredient.value), 1);
        console.log(selectedIngredient)
    }
    else {
        selectedIngredient.push(optionIngredient.value);
        console.log(selectedIngredient)
    }
    axios.post('http://localhost/php/Food-ly/index-includes/prompt-form.php', {search: searchBlock.value, selectedIngredient: selectedIngredient})
        .then(response => {
            formDiv.innerHTML = response.data;
        })
        .catch(error => {
            console.error("Axios error:", error);
        });
});
