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
					<input id="username" class=" easyui-textbox" name = "title" prompt="请输入商品名称" data-options="required:true,validType:'length[3,10]'">
				</div>
				<div class="form-item">
					<label for="" class="label-top">商品卖点：</label>
					<input class="easyui-textbox" name= "sellPoin" data-options="iconCls:'fa fa-user',iconAlign:'left'" prompt="请输入文本">
				</div>
				<div class="form-item">
					<label for="" class="label-top">商品价格：</label>
					<input type="text" name= "price"class="easyui-numberbox" value="100" data-options="min:0,precision:2" />
				</div>
				<div class="form-item">
					<label for="" class="label-top">商品库存：</label>
					<input type="text"  name= "num" class="easyui-numberbox" value="100" data-options="min:0,precision:2" />
				</div>
				<div class="form-item">
					<label for="" class="label-top">商品条形码：</label>
					<input type="text"  name="barcode" class="easyui-numberbox" value="100" data-options="min:0,precision:2" />
				</div>
				
				<div class="form-item">
					<label for="" class="label-top">文件选择：</label>
					<input class="easyui-filebox" name="image" data-options="buttonText:'上传图片',buttonIcon:'fa fa-upload'">
				</div>
				<a href="javascript:void(0)" class="easyui-linkbutton success" onclick="clearForm()">添加</a>
				<a href="javascript:void(0)" class="easyui-linkbutton warning" onclick="submitForm()">取消</a>
		</form>	
		
		<script type="text/javascript">
		function submitForm(){
			if(!$('#itemAddForm').form('validate')){
				$.messager.alert('提示','表单还未填写完成！');
				return;
			}
			alert($('#itemAddForm').serialize());
			$.post("/item/save",$("#itemAddForm").serialize(),function(date){
				if(data.status == 200){
					$("#dgTbItem").datagrid("reload");
					$.messager.alert('操作成功','恭喜您添加产品成功','wraning',function(){
						$('#item-list').click
					});
				}
			});
		}
		
		function clearForm(){
			$('#itemAddFrom').form('reset');
		}
		</script>
</div>					
				
</body>
</html>