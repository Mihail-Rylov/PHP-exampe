<?php
$S = "qwe1qw2eqw3qwe4";
echo $S . "<br>";
for($i=0; $i<strlen($S); $i++){ 
	if (is_numeric($S[$i])) echo $S[$i]." ";
}
?>