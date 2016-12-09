<?php
/*
*Using SimpleXML to update xml data
*/
//prevent from redirect
 if(isset($_SERVER['HTTP_REFERER'])){
  header("Location: ".$_SERVER['HTTP_REFERER']);
}
else{
  echo "Error"; 
}
//store form data in variables
$brand = $_POST["brand"];
$name = $_POST["name"];
$price = $_POST["price"];
$type = $_POST["type"];
$colour = $_POST["colour"];
$gender = $_POST["gender"];
$minSize = $_POST["minSize"];
$maxSize = $_POST["maxSize"];


//check if xml file exists
if(file_exists('shoes.xml')){
  //load data from xml file into xml variable
  $xml = simplexml_load_file('shoes.xml');
  //add new book element to variable
  $newChild = $xml->addChild('store');
  $newChild->addChild('brand',$brand);
  $newChild->addChild('name',$name);
  $newChild->addChild('price',$price);
  $newChild->addChild('type',$type);
  $newChild->addChild('colour',$colour);
  $newChild->addChild('gender',$gender);
  $newChild->addChild('minSize',$minSize);
  $newChild->addChild('maxSize',$maxSize);
}
//if file doesnt exist
else{
  exit('Failed to open shoes.xml');//error message
}
//save new data from variable back into an xml file
file_put_contents('/home/cabox/workspace/project/shoes.xml',$xml->asXML()); 
?>
