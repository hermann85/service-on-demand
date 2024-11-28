<?php
echo 'Hello world!';
?>

<p><?php echo 'We are running PHP, version: ' . phpversion(); ?></p>

<?php
    $host = "mysql";
    $dbname = "mydb";
    $charset = "utf8";
    $port = "3306";
    try {
        $pdo = new PDO(
            dsn: "mysql:host=$host;dbname=$dbname;charset=$charset;port=$port",
            username: "root",
            password: "root",
        );

        $persons = $pdo->query("SELECT * FROM persons");

        echo '<pre>';
        foreach ($persons->fetchAll(PDO::FETCH_ASSOC) as $person) {
            print_r($person);
        }
        echo '</pre>';

    } catch (PDOException $e) {
        throw new PDOException(
            message: $e->getMessage(),
            code: (int)$e->getCode()
        );
    }
?>