<?php
header("content-type:application/json");
$variable = "Just a String....";

if($_POST['action'] == "getQuote") {
  /**
   * we can pass any action like block, follow, unfollow, send PM....
   * if we get a 'follow' action then we could take the user ID and create a SQL command
   * but with no database, we can simply assume the follow action has been completed and return 'ok'
  **/
  echo json_encode($variable);

  //echo "ok";
  exit();
}

?>