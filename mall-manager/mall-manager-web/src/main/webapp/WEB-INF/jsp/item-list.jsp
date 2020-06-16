<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="super-theme-example">
		<div style="height: 550px;">
		<table id="dgTbItem" ></table>
		</div>
	</div>
	
	<script type="text/javascript">
		
		$('#dgTbItem').datagrid({
			url: 'item/getItem',
			fit : true,
			pagination : true,
			fitColumns : true,
			toolbar : [ {
				text : '添加',
				iconCls : 'fa fa-plus',
				handler : function() {
				}
			}, {
				text : '编辑',
				iconCls : 'fa fa-edit',
				handler : function() {
				}
			}, {
				text : '保存',
				iconCls : 'fa fa-save',
				handler : function() {
				}
			}, {
				text : '删除',
				iconCls : 'fa fa-remove',
				handler : function() {
				}
			} ],

			height : 400,
			columns : [ [ {
				field : 'id',
				title : '商品id',
				width : 100,
				align : 'center',
				sortable : true
			}, {
				field : 'title',
				title : '商品标题',
				width : 200,
				align : 'center',
				sortable : true
			}, {
				field : 'sell_point',
				title : '商品卖点',
				width : 100,
				align : 'center',
				sortable : true
			},{
				field : 'price',
				title : '商品价格',
				width : 100,
				align : 'center',
				sortable : true,
				formatter:TT.formatPrice
			},{
				field : 'num',
				title : '库存数量',
				width : 100,
				align : 'center',
				sortable : true
			},{
				field : 'barcode',
				title : '商品条形码',
				width : 100,
				align : 'center',
				sortable : true
			},{
				field : 'image',
				title : '商品图片',
				width : 100,
				align : 'center',
				formatter:function(value,row){
					return "<img src = "+value+ "width='100px' heigth= '100px'>"
				}
				
			},{
				field : 'cid',
				title : '所属类目',
				width : 100,
				align : 'center',
				sortable : true
			},{
				field : 'status',
				title : '商品状态',
				width : 100,
				align : 'center',
				sortable : true
			},{
				field : 'created',
				title : '创建时间',
				width : 100,
				align : 'center',
				sortable : true
			}, {
				field : 'updated',
				title :' 更新时间t'
				width : 100,
				align : 'center'
			} ] ]
		});
	</script>
</body>
</html>