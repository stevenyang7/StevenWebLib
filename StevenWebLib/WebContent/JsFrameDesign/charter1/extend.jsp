<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学习对象扩展</title>

<script type="text/javascript">
	function extend(destination, source) {
		for ( var property in source) {
			destination[property] = source[property];
		}
		return destination;
	}

	var animal = {
		type : "animal"
	};

	var cat = {
		name : "cat",
		desc : "this is a cat"
	};

	cat = extend(cat, animal);

	alert(cat.type);
	// 这里不能用cat[type]？
</script>

</head>
<body>

</body>
</html>