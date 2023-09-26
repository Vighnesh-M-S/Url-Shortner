# Url-Shortner

URL shortening service using MAMP(Macintosh,Apache,MYSQL,php) stack.

URL Shortener Library (Shortener.class.php)

The URL Shortener class allow to programmatically create short URL using PHP and MySQL. This class uses PDO Extension to work with the MySQL database, so, PDO object instance is required on initialization of Shortener class.

Static Variables:

$chars – Allowed characters for the short code. (Characters group is separated by |)
$table – Database table name to store the URL and short code info.
$checkUrlExists – Set to TRUE, to check whether the long URL exists.
$codeLength – The length of the short code characters.
Functions:

\_\_construct() – Set PDO object reference and timestamp.
urlToShortCode() – Validate URL and create short code.
validateUrlFormat() – Validate the format of the URL.
verifyUrlExists() – Verify the URL whether it exist or not using cURL in PHP.
urlExistsInDB() – Check whether the long URL is exist in the database. If exist, return the shot code, otherwise, return FALSE.
createShortCode() – Create short code for the long URL and insert the long URL & short code in the database.
generateRandomString() – Generate random string (short code) with the specified characters in the $chars variable.
insertUrlInDB() – Insert URL info in the database using PDO Extension and MySQL and return the row ID.
shortCodeToUrl() – Convert the short code to long URL and insert the hits count in the database.
validateShortCode() – Validate the short code based on the allowed characters.
getUrlFromDB() – Fetch the long URL from the database based on the short code.
incrementCounter() – Increment the URL visits counter in the database for a particular record.

Database Configuration (dbConfig.php)
In the dbConfig.php file, PDO (PHP Data Objects) is used to connect and select the database. Specify the database host ($dbHost), username ($dbUsername), password ($dbPassword), and name ($dbName) as per your MySQL database server credentials.

Create Short URL with PHP
The following code creates short code and generates short URL with custom URL Shortener class using PHP and MySQL.

Initialize Shortener class and pass the PDO object.
Specify the long URL which you want to convert in a short link.
Specify the short URL prefix. If you want to use RewriteEngine to Rewrite the URL, specify only the base URI. Otherwise, specify the base URI with a query string to pass the short code.
Call the urlToShortCode() function to get the short code of the long URL.
Create short URL with URI prefix and short code.

Redirect to Long URL
The following code handles the redirection from short URL to the original URL.

Retrieve the short code from the query string of the URL, or from the URI segment.
Call shortCodeToUrl() function to get the long URL by the short code.
Redirect user to the original URL.

URL Rewrite with HTACCESS
If you want to make the URL user-friendly, use HTACCESS with RewriteRule. With mod_rewrite, you can make the URL length shorter and easy to share.

Create a .htaccess file and add the following code.

The above HTACCESS RewriteRule will send the request to redirect.php file. So, the redirect.php file name doesn’t need to mention in the short URL.

The short URL without using HTACCESS looks something like this – https://example.com/redirect.php?c=gzYN7BK
The short URL with using HTACCESS looks something like this – https://example.com/gzYN7BK

Conclusion
Our Shortener class helps you to create short URL easily using PHP. You can use this library to build your own URL Shortener with PHP and MySQL. Use the example code to shorten the URL on the fly without using any third-party service. Also, the PHP URL Shortener class can easily be extended to customize the URL shorting functionality.
