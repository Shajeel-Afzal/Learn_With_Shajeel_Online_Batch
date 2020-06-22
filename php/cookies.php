<?php

	// setcookie(name, value, expire, path, domain, secure, httponly)

	// Superglobal $_COOKIE

	/*

		name: 
			Specifies the Cookie Name.
		Value: 
			Specifies the Cookie Value.
		Expire: 
			- Specifies when the Cookie will expire. time() + 86400*30
			- If you specify 0 or ommit the expire parameter then it will be active uintil the session end.
		Path:
			- Specifies the server path of the cookie.
			- If set to "/" the cookie will be avialable to the entire domaion.
			- If set to "/php/" then the cookie will be available in the php directory
		Domain:
			- Specifies the domain and all sub domains in which the cookie will be accessible. google.com, maps.google.com
		Secure:
			- Specifies whether the cookie will be transmitted over a secure, HTTPS connection or not.
			- Default value is FALSE
		HTTPOnly:
			- It will be accessible through HTTP protocal. 
		
		- Please note that setcookie() function must come after the html tag.

		- NEVER store sensitive information in COOKIES.

	*/

	$name = "Shajeel Afzal";
	setcookie("user_name", $name, time() + (86400 * 30)); // This cookie will expire in 30 days.

	// isset(name) is used to check whether the cookie exists or not.

	if(isset($_COOKIE['user_name'])){
		echo "Value is: ".$_COOKIE["user_name"];
	} else {
		echo "This COOKIE does not exist.";
	}

?>






