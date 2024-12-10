<div style="border-bottom: 1px dashed black; margin: 20px 0 0 0">
    <table>
        <tr>
            <th>N°</th>
            <th>Name</th>
            <th>Edit</th>
        </tr>
        <?php
        $sql = 'SELECT * FROM type';
        $result = $base->prepare($sql);
        $result->execute();
        $counter = 1;
        while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
            echo '<tr>';
            echo '<td>' . $counter++ . '</td>';
            echo '<td>' . $row['LIBELLE_TYPE'] . '</td>';
            echo '<td><a href="dashboard-edit.php?action=modify&where=ID_TYPE&from=type&id='.$row['ID_TYPE'].'">Edit</a></td>';
            echo '</tr>';
        }
        ?>
    </table>
    <br>
    <form action="dashboard.php" method="post">
        <label for="type">Add a type :</label>
        <input type="text" name="type">
        <input type="submit" value="Add" name="add-type">
    </form>
</div>