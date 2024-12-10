<div style="border-bottom: 1px dashed black; margin: 20px 0 0 0">
    <table>
        <tr>
            <th>N°</th>
            <th>Name</th>
            <th>Edit</th>
        </tr>
        <?php
        $sql = 'SELECT * FROM regime';
        $result = $base->prepare($sql);
        $result->execute();
        $counter = 1;
        while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
            echo '<tr>';
            echo '<td>' . $counter++ . '</td>';
            echo '<td>' . $row['LIBELLE_REGIME'] . '</td>';
            echo '<td><a href="dashboard-edit.php?action=modify&where=ID_REGIME&from=regime&id='.$row['ID_REGIME'].'">Edit</a></td>';
            echo '</tr>';
        }
        ?>
    </table>
    <br>
    <form action="dashboard.php" method="post">
        <label for="regime">Add a regime :</label>
        <input type="text" name="regime">
        <input type="submit" value="Add" name="add-regime">
    </form>
</div>