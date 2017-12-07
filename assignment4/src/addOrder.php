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
    if(empty($_POST['orderTime'])){
        // Adds name to array
        $missingData[] = 'Order Time';
    } else{
        // Trim white space from the name and store the name
        $o_time = ($_POST['orderTime']);
    }
    if(empty($_POST['orderDate'])){
        // Adds name to array
        $missingData[] = 'Order Date';
    } else {
        // Trim white space from the name and store the name
        $o_date = ($_POST['orderDate']);
    }

    if(empty($missingData)){
        require_once('./mysqli_connect.php');
        $query = "INSERT INTO restaurantorder (orderNo, orderTime, orderDate) VALUES (?, ?, ?)";
        $stmt = mysqli_prepare($dbc, $query);
        mysqli_stmt_bind_param($stmt, "iss", $o_no, $o_time, $o_date);
        mysqli_stmt_execute($stmt);

        $rowsAffected = mysqli_stmt_affected_rows($stmt);
        if($rowsAffected == 1){
            echo 'Order Entered';
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

<form action="http://localhost/addOrder.php/" method="post">

    <b>Add a new order</b>

    <p>Order No:
        <input type="text" name="orderNo" size="30" value="" />
    </p>

    <p>Order Time (HH:MM:SS):
        <input type="text" name="orderTime" size="30" value="" />
    </p>

    <p>Order Date (YYYY-MM-DD):
        <input type="text" name="orderDate" size="30" value="" />
    </p>

    <p>
    <input type="submit" name="submit" value="Send" />
    </p>

</form>
</body>
</html>
