
<?php include 'inherited.php' ?>
<br>
<html>
<body>

<form></form>
<?php
// Get a connection for the database
require_once('./mysqli_connect.php');

// Create a query for the database
$query = "SELECT orderNo, orderTime, orderDate, subtotal, tax, total from restaurantorderview";

// Get a response from the database by sending the connection
// and the query
$response = @mysqli_query($dbc, $query);

// If the query executed properly proceed
if($response){

    echo '<table align="left"
cellspacing="5" cellpadding="8">

<tr><td align="left"><b>Order Number</b></td>
<td align="left"><b>Order Time</b></td>
<td align="left"><b>Order Date</b></td>
<td align="left"><b>subtotal</b></td>
<td align="left"><b>tax</b></td>
<td align="left"><b>total</b></td></tr>';

// mysqli_fetch_array will return a row of data from the query
// until no further data is available
    while($row = mysqli_fetch_array($response)){

        echo '<tr><td align="left">' .
            $row['orderNo'] . '</td><td align="left">' .
            $row['orderTime'] . '</td><td align="left">'.
            $row['orderDate'] . '</td><td align="left">'.
            $row['subtotal'] . '</td><td align="left">' .
            $row['tax'] . '</td><td align="left">'.
            $row['total'] . '</td><td align="left">';
        echo '</tr>';
    }

    echo '</table>';

} else {

    echo "Couldn't issue database query<br />";

    echo mysqli_error($dbc);

}

// Close connection to the database
mysqli_close($dbc);

?>
</body>
</html>


