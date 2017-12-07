<html>
<head>
    <title>Add an order</title>
    <br>
    <?php include 'inherited.php' ?>
    <br>
</head>
<body>
<?php
if(isset($_POST['submit'])){
    $missingData = array();
    if(empty($_POST['orderNo'])){
        // Adds name to array
        $missingData[] = 'Order Number';
    } else {
        // Trim white space from the name and store the name
        $o_no = ($_POST['orderNo']);
    }
    if(empty($_POST['menuNo'])){
        // Adds name to array
        $missingData[] = 'Menu Number';
    } else {
        // Trim white space from the name and store the name
        $m_no = ($_POST['menuNo']);
    }

    if(empty($missingData)){
        require_once('./mysqli_connect.php');
        $query = "INSERT INTO orderreferencemenu (orderNo, menuNo) VALUES (?, ?)";
        $stmt = mysqli_prepare($dbc, $query);
        mysqli_stmt_bind_param($stmt, "ii", $o_no, $m_no);
        mysqli_stmt_execute($stmt);

        $rowsAffected = mysqli_stmt_affected_rows($stmt);
        if($rowsAffected == 1){
            echo 'menu item added to order';
            mysqli_stmt_close($stmt);
            mysqli_close($dbc);
        } else {
            echo 'Error Occurred<br />';
            echo mysqli_error();
            mysqli_stmt_close($stmt);
            mysqli_close($dbc);
        }

    } else {
        echo 'You need to enter the following data<br />';
        foreach ($missingData as $missing) {
            echo "$missing<br />";
        }
    }
}
?>

<form action="http://localhost/addMenuItemToOrder.php/" method="post">

    <b>Add a menu item to order</b>

    <p>Order No:
        <input type="text" name="orderNo" size="30" value="" />
    </p>

    <p>Menu No:
        <input type="text" name="menuNo" size="30" value="" />
    </p>

    <p>
        <input type="submit" name="submit" value="Send" />
    </p>

</form>
</body>
</html>
