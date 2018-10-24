<?php
/* validation as sanitizing */
function sanitize($before){
	foreach ($before as $key => $value){
		$after[$key] =htmlspecialchars($value);
	}

	return $after;
}

?>