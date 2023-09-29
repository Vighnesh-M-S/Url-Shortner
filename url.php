<?php
// Include the configuration and database connection file
require_once(realpath(dirname(__FILE__) . '/config.php'));

// Check if the 'url' parameter is present in the query string
$url = isset($_GET['url']) ? $_GET['url'] : '';

// Create a new database connection
$db = new Connect();

// Prepare the SQL statement to retrieve the long URL
$getLongURL = $db->prepare('SELECT long_url FROM shortened_urls WHERE short_url = :short_url');

// Execute the query with the 'short_url' parameter
$getLongURL->execute(['short_url' => $url]);

// Fetch the long URL from the result
$longURL = $getLongURL->fetchColumn();

// Check if a long URL was found
if ($longURL !== false) {
    // Redirect the user to the long URL
    header("Location: $longURL");
    exit; // Terminate the script to ensure the redirection happens
} else {
    // Display a message if the URL doesn't exist
    echo "This URL doesn't exist!";
}
?>
