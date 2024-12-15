<?php
include 'base-start.php';
if (!isset($_GET['id'])) {
    header('Location: favorite.php');
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
    <title>Ai chat</title>
    <?php
    include 'style-links.php';
    ?>
</head>
<body>
<main>
    <?php
    include 'nav-bar.php';
        $sql = "SELECT * FROM plat JOIN origine ON plat.ID_ORIGINE = origine.ID_ORIGINE JOIN type ON plat.ID_TYPE = type.ID_TYPE JOIN regime ON plat.ID_REGIME = regime.ID_REGIME WHERE ID_PLAT = :id";
        $result = $base->prepare($sql);
        $result->execute(array('id' => $_GET['id']));
        $row = $result->fetch();
        $sql = "SELECT * FROM plat_ingredient JOIN ingredient ON plat_ingredient.ID_INGREDIENT = ingredient.ID_INGREDIENT WHERE ID_PLAT = :id";
        $result = $base->prepare($sql);
        $result->execute(array('id' => $_GET['id']));
        $ingredients = '';
        while ($row2 = $result->fetch()) {
            $ingredients .= $row2['LIBELLE_INGREDIENT'] . ', ';
        }
        $prompt = 'You are working with the dish ' . $row['LIBELLE_PLAT'] . '. It is a ' . $row['NIVEAU_DIFFICULTE'] . ' level dish from ' . $row['LIBELLE_ORIGINE'] . '. It is a ' . $row['LIBELLE_TYPE'] . ' dish and is ' . $row['HEALTH'] . ' and is '. $row['LIBELLE_REGIME'].'. The ingredients are:'. $ingredients .' The instructions are: ' . $row['INSTRUCTION'] . ', and it takes around '.$row['TIME'].'.The response has to be around than 500 charaters long, will only simple characters and no bold characters or \\n, if the question is unrelated to the recipe always answer "I cannot provide information about that". The discution history is: ';
    echo '<h1 id="chat-title">Chat with the AI about : '.$row['LIBELLE_PLAT'].'</h1>';
    ?>
    <section style="width: 100%">
        <article id="chat-page" style="width: 100%; height: 600px; border: 1px solid black">

        </article>
        <article id="chatbox">
            <input type="text" id="chat-input" placeholder="Type a message...">
            <button style="bottom: 0" id="send">Send</button>
        </article>
    </section>
</main>
<script>
    let chatPage = document.getElementById('chat-page');
    let chatInput = document.getElementById('chat-input');
    let sendButton = document.getElementById('send');
    let discutionHistory = [];
    sendButton.addEventListener('click' , function(){
        let prompt = `<?php echo $prompt; ?>`;
        prompt += discutionHistory.join('. ') + '. ';
        prompt += 'The user asked: ' + chatInput.value;
        let userDiv = document.createElement('div');
        userDiv.style.textAlign = 'right';
        userDiv.style.margin = '10px 0'
        userDiv.style.padding = '0 20px'
        userDiv.textContent = chatInput.value;
        chatPage.appendChild(userDiv);
        let aiDiv = document.createElement('div');
        aiDiv.style.textAlign = 'left';
        aiDiv.style.margin = '10px 0'
        aiDiv.style.padding = '0 20px'
        aiDiv.textContent = 'Thinking...';
        chatPage.appendChild(aiDiv);
        axios.post('http://localhost:3000/generate', { prompt: prompt })
            .then(response => {
                let aiMessage = response.data;
                aiDiv.textContent = aiMessage;
                if (aiMessage !== 'I cannot provide information about that') {
                    discutionHistory.push(chatInput.value + '. The answer was : ');
                    discutionHistory.push(aiMessage);
                }
                if (discutionHistory.length > 4) {
                    discutionHistory.shift();
                    discutionHistory.shift();

                }
                chatInput.value = '';
            })
            .catch(error => {
                console.error('Error fetching data:', error);
            });
    });
</script>
</body>
</html>
