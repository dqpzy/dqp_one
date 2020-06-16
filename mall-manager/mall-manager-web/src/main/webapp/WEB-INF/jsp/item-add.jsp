<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
			.form-item {
				margin-bottom: 15px;
				width: 50%;
				float: left;
			}
			
			.form-item>label {
				min-width: 72px;
				display: inline-block;
			}
			
			.form-item input,
			select {
				width: 170px;
			}
		</style>
</head>
<body>
<div class="super-theme-example">
			<form id="ff" method="post">
				<div class="form-item">
					<label for="" class="label-top">商品名称：</label>
					<input id="username" class="easyui-validatebox easyui-textbox" prompt="请输入商品名称" data-options="required:true,validType:'length[3,10]'">
				</div>
				<div class="form-item">
					<label for="" class="label-top">文本输入框：</label>
					<input class="easyui-textbox" data-options="iconCls:'fa fa-user',iconAlign:'left'" prompt="请输入文本">
				</div>
				<div class="form-item">
					<label for="" class="label-top">商品价格：</label>
					<input type="text" class="easyui-numberbox" value="100" data-options="min:0,precision:2" />
				</div>
				<div class="form-item">
					<label for="" class="label-top">文件选择：</label>
					<input class="easyui-filebox" data-options="buttonText:'上传头像',buttonIcon:'fa fa-upload'">
				</div>
				
</body>
</html>