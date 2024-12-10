<div style="border-bottom: 1px dashed black">
    <table>
        <tr>
            <th>N°</th>
            <th>Name</th>
            <th>Edit</th>
        </tr>
        <?php
        $sql = 'SELECT * FROM ingredient';
        $result = $base->prepare($sql);
        $result->execute();
        $counter = 1;
        while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
            echo '<tr>';
            echo '<td>' . $counter++ . '</td>';
            echo '<td>' . $row['LIBELLE_INGREDIENT'] . '</td>';
            echo '<td><a href="dashboard-edit.php?action=modify&where=ID_INGREDIENT&from=ingredient&id='.$row['ID_INGREDIENT'].'">Edit</a></td>';
            echo '</tr>';
        }
        ?>
    </table>
    <br>
    <form action="dashboard.php" method="post">
        <label for="ingredient">Add an ingredient :</label>
        <input type="text" name="ingredient">
        <input type="submit" value="Add" name="add-ingredient">
    </form>
</div>