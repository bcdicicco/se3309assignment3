<?php include 'inherited.php' ?>
<br>
<html>
<head>
    <title></title>
</head>
<body>

<form action="http://localhost/MenuItemOrder.php/" method="post">

    <b>Find a menu item based on order</b>

    <p>Order Number:
        <input type="text" name="oNo" size="8" value="" />
    </p>

    <p>
        <input type="submit" name="submit" value="Search" />
    </p>

</form>
<?php
if(isset($_POST['submit'])) {
    // Get a connection for the database
    require_once('./mysqli_connect.php');

    $orderNo = ($_POST['oNo']);
    // Create a query for the database
    $query = "SELECT orderNo, menuNo FROM orderreferencemenu WHERE orderNo = '" .$orderNo."'";

    // Get a response from the database by sending the connection
    // and the query
    $response = @mysqli_query($dbc, $query);

    // If the query executed properly proceed
    if ($response) {

        echo '<table align="left" cellspacing="5" cellpadding="8">
    
        <tr><td align="left"><b>Order Number</b></td>
        <td align="left"><b>Menu Number</b></td></tr>';

        // mysqli_fetch_array will return a row of data from the query
        // until no further data is available
        while ($row = mysqli_fetch_array($response)) {

            echo '<tr><td align="left">' .
                $row['orderNo'] . '</td><td align="left">' .
                $row['menuNo'] . '</td><td align="left">';

            echo '</tr>';
        }

        echo '</table>';

    } else {

        echo "Couldn't issue database query<br />";

        echo mysqli_error($dbc);

    }

    // Close connection to the database
    mysqli_close($dbc);
}
?>

</body>
</html>

