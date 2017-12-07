<?php include 'inherited.php' ?>
<br>
<html>
<head>
    <title></title>
</head>
<body>

<form action="http://localhost/OrderBetweenTime.php/" method="post">

    <b>Search for orders between times</b>

    <p>Start Time (HH:MM:SS):
        <input type="text" name="timeBegin" size="8" value="" />
    </p>

    <p>End Time (HH:MM:SS):
        <input type="text" name="timeEnd" size="8" value="" />
    </p>
    <p>
        <input type="submit" name="submit" value="Search" />
    </p>

</form>
<?php
if(isset($_POST['submit'])) {
    // Get a connection for the database
    require_once('./mysqli_connect.php');

    $tB = ($_POST['timeBegin']);
    $tE = ($_POST['timeEnd']);
    // Create a query for the database
    $query = "SELECT COUNT(OrderNo) as orders_between_time FROM restaurantorder WHERE orderTime between '".$tB."' and '".$tE."'";

    // Get a response from the database by sending the connection
    // and the query
    $response = @mysqli_query($dbc, $query);

    // If the query executed properly proceed
    if ($response) {

        echo '<table align="left"
    cellspacing="5" cellpadding="8">
    
    <tr><td align="left"><b>Orders Between Times</b></td></tr>';

        // mysqli_fetch_array will return a row of data from the query
        // until no further data is available
        while ($row = mysqli_fetch_array($response)) {

            echo '<tr><td align="left">' .
                $row['orders_between_time'] . '</td><td align="left">';

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

