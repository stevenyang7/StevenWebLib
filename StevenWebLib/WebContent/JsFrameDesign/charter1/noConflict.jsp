<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学习如何保留临时变量</title>

<script type="text/javascript">
	// 模拟其它地方已经定义了jQuery
	var jQuery = "old";

	// 将存在同名的变量存放起来
	var _jQuery = jQuery;

	// 覆盖
	jQuery = "new";

	// 获取原变量值
	function noConflict() {
		jQuery = _jQuery;
		return jQuery;
	}

	// 没有保留前的值
	alert("当前值：" + jQuery);
	noConflict();
	alert("获取保留前的值：" + jQuery);
</script>

</head>
<body>

</body>
</html>