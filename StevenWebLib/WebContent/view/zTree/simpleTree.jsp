<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<TITLE>学习制作一个最简单的树</TITLE>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../../css/zTree/demo.css" type="text/css">
<link rel="stylesheet" href="../../css/zTree/zTreeStyle/zTreeStyle.css"
	type="text/css">
<script type="text/javascript" src="../../js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="../../js/jquery.ztree.all-3.5.js"></script>
<SCRIPT type="text/javascript">
	var setting = {};
	var zTreeNodes = [ {
		name : "HTML",
		open : true,
		id: 1, 
		children : [ {
			"id" : 101,
			"name" : "语法"
		}, {
			"id" : 102,
			"name" : "HTML5 doctype"
		}, {
			"id" : 103,
			"name" : "语言属性（Language attribute）"
		} ]
	}, {
		"name" : "CSS",
		open : true,
		id: 2, 
		children : [ {
			"id" : 201,
			"name" : "语法"
		}, {
			"id" : 202,
			"name" : "声明顺序"
		}, {
			"id" : 203,
			"name" : "媒体查询（Media query）的位置"
		} ]
	}

	];

	$(document).ready(function() {
		zTreeObj = $.fn.zTree.init($("#tree"), setting, zTreeNodes);

	});
</SCRIPT>
</HEAD>
<BODY>
	<h1>学习制作一个最简单的树</h1>
	<div>
		<ul id="tree" class="ztree" style="width: 230px; overflow: auto;"></ul>
	</div>
</BODY>
</HTML>