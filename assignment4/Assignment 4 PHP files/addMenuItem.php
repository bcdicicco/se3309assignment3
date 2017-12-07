<?php include 'inherited.php' ?>
<br>
<html>
<head>
    <title>Add Item</title>
</head>
<body>

<form action="http://localhost/addMenuItem.php/" method="post">

    <b>Add a new menu item</b>

    <p>Menu No:
        <input type="text" name="menuNo" size="30" value="" />
    </p>

    <p>Food Name:
        <input type="text" name="menuName" size="30" value="" />
    </p>

    <p>Cost:
        <input type="text" name="cost" size="30" value="" />
    </p>

    <p>Price:
        <input type="text" name="price" size="30" value="" />
    </p>

    <p>
        <input type="submit" name="submit" value="Send" />
    </p>

</form>
</body>
</html>

<?php

if(isset($_POST['submit'])){
    $missingData = array();

    if(empty($_POST['menuNo'])){

        // Adds name to array
        $missingData[] = 'Menu Number';

    } else {

        // Trim white space from the name and store the name
        $m_no = ($_POST['menuNo']);

    }

    if(empty($_POST['menuName'])){

        // Adds name to array
        $missingData[] = 'Food Name';

    } else{

        // Trim white space from the name and store the name
        $m_name = ($_POST['menuName']);

    }

    if(empty($_POST['cost'])){

        // Adds name to array
        $missingData[] = 'Cost';

    } else {

        // Trim white space from the name and store the name
        $c = trim($_POST['cost']);

    }

    if(empty($_POST['price'])){

        // Adds name to array
        $missingData[] = 'Price';

    } else {

        // Trim white space from the name and store the name
        $price = ($_POST['price']);

    }


    if(empty($missingData)){

        require_once('./mysqli_connect.php');

        $query = "INSERT INTO menuItem (menuNo, menuName, cost, price) VALUES (?, ?, ?, ?)";

        $stmt = mysqli_prepare($dbc, $query);

        mysqli_stmt_bind_param($stmt, "isdd", $m_no, $m_name, $c, $price);

        mysqli_stmt_execute($stmt);

        $rowsAffected = mysqli_stmt_affected_rows($stmt);

        if($rowsAffected == 1){

            echo 'item added';

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
