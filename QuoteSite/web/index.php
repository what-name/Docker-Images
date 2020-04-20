<!DOCTYPE HTML>
<head>
    <title>itsJustQuotes</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Raleway:600,700" rel="stylesheet">
    <script type="text/javascript" src="main.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <?php
    include("NotLogins4Sure.php");

    #VARIABLES
    $randomColor;
    $randomNumber;
    $bgColor;

    #FIXME - without js to reload the page, the same color can't be prevented (refresh)
    function randomColor() {
        $randomColorOld;
        global $randomColor;
        $randomColor = rand(1,30);
        if($randomColor == $randomColorOld) {
            $randomColor = rand(1,30);
        }
    }
    #FIXME - without js to reload the page, the same color can't be prevented (refresh)
    function randomNumber() {
        $randomNumberOld;
        global $randomNumber;
        $randomNumber = rand(1,20);
        if($randomNumber == $randomNumberOld) {
            $randomNumber = rand(1,20);
        }
    }

    function getColor() {
        global $conn;
        global $bgColor;
        global $randomColor;
        $dbRead = 'SELECT * FROM colors  WHERE id="' . $randomColor . '"';
        $queryResult = $conn->query($dbRead);
        if ($queryResult->num_rows > 0) {
            #print data of each data
            while($data = $queryResult->fetch_assoc()) {
                $bgColor = $data['color'];
                }
            } else {
                echo "0 results in color database.  --  ";
        }
    }
    
    function printQuote() {
        global $conn;
        global $randomNumber;
        $dbRead = 'SELECT * FROM quotes WHERE ID="' . $randomNumber . '"' ;
        $queryResult = $conn->query($dbRead);
        if ($queryResult->num_rows > 0) {
        // print data of each data
        while($data = $queryResult->fetch_assoc()) {
            echo $data['quote'];
            }
        } else {
            echo "0 results in database.  --  ";
        }
    }

    function printAuthor() {
        global $conn;
        global $randomNumber;
        $dbRead = 'SELECT * FROM quotes WHERE ID="' . $randomNumber . '"' ;
        $queryResult = $conn->query($dbRead);
        if ($queryResult->num_rows > 0) {
        // print data of each data
        while($data = $queryResult->fetch_assoc()) {
            echo $data['author'];
            }
        } else {
            echo "0 results in database.  --  ";
        }
    }

    randomColor();
    getColor();
    randomNumber();
    ?>


</head>

<body id="hg" style="background-color:  <?php echo $bgColor; ?>">
    <div class="container">
        <p id="quote"><?php echo printQuote(); ?></p>
        <p id="author"><?php echo "- "; printAuthor(); ?></p>   
    </div>
            <a href="javascript:changeText()">
            
            <div id="button">
            </div>
        </a>
    <div class="about"><a href="somewhere.html">about</a></div> 
</body>

