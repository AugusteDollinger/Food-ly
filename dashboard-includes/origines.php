<div style="border-bottom: 1px dashed black; margin: 20px 0 0 0">
    <table>
        <tr>
            <th>N°</th>
            <th>Name</th>
            <th>Edit</th>
        </tr>
        <?php
        $sql = 'SELECT * FROM origine';
        $result = $base->prepare($sql);
        $result->execute();
        $counter = 1;
        while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
            echo '<tr>';
            echo '<td>' . $counter++ . '</td>';
            echo '<td>' . $row['LIBELLE_ORIGINE'] . '</td>';
            echo '<td><a href="dashboard-edit.php?action=modify&where=ID_ORIGINE&from=origine&id='.$row['ID_ORIGINE'].'">Edit</a></td>';
            echo '</tr>';
        }
        ?>
    </table>
    <br>
    <form action="dashboard.php" method="post">
        <label for="origine">Add an origine :</label>
        <input type="text" name="origine">
        <input type="submit" value="Add" name="add-origine">
    </form>
</div>