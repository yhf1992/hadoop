<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel=stylesheet href="jquery/jquery-ui.css"/>
<script type="text/javascript" src="jquery/jquery-1.8.3.js"></script>
<script type="text/javascript" src="jquery/jquery-ui.js"></script>
<link rel="stylesheet" href="bootstrap-3.2.0-dist/css/bootstrap.css"/>

<script type="text/javascript">
	$(document).ready(function(){
		$("#query").autocomplete({
			 source : function(request,response){
				 $.ajax({
					url : "ajax/sug",
					dataType : "json",
					data : {
						query : $("#query").val()
					},
					success : function(data){
						response($.map(data.result,function(item){
							return {value:item}
						}));
					}
				 });
			 },
			 minLength:1,
		});
	});
</script>
<title>hadoop search</title>
</head>
<body>
	<div class="container">
		<h1>Search Demo</h1>
		<div class="well">
			<form>
				<label>Search</label>
				<input id="query"></input>
			</form>
		</div>
	</div>
</body>
</html>