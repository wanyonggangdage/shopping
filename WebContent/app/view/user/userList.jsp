<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>shopping</title>
    
    <!-- Bootstrap 3.3.4 -->
<link href="app/style/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- Font Awesome Icons -->
<link href="app/style/bootstrap/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="app/style/bootstrap/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="app/style/bootstrap/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
<!-- AdminLTE Skins. Choose a skin from the css/skins
     folder instead of downloading all of them to reduce the load. -->
<link href="app/style/bootstrap/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
<!-- bootstrap wysihtml5 - text editor -->
    <link href="app/style/bootstrap/css/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
<link href="app/style/mine/userList.css" rel="stylesheet" type="text/css" />


  </head>
<body>
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">员工列表</h3>
            <div class="box-tools">
                <div class="input-group" style="width: 150px;">
                    <input type="text" name="table_search" class="form-control input-sm pull-right" placeholder="Search">
                    <div class="input-group-btn">
                        <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                    </div>
                </div>
            </div>
        </div><!-- /.box-header -->
        <div class="box-body table-responsive no-padding">
             <table class="table table-hover table-striped" id="warehouseTable">
                <tbody><tr>
                    <th>员工编号</th>
                    <th>员工姓名</th>
                    <th>员工性别</th>
                    <th>员工年龄</th>
                    <th>电话号码</th>
                    <th>照片</th>
                    <th>操作</th>
                </tr>
                <s:iterator value="users" status="minUsers"> 
                <tr>
                    <td><s:property value="number"/></td>
                    <td><s:property value="name"/></td>
                    <td><s:property value="sex"/></td>
                    <td><span class="label label-success" style="vertical-align: cneter;"><s:property value="age"/></span></td>
                    <td><s:property value="telNumber"/></td>
                    <td><img src="app/img/foods/a.jpg" alt="10x10" class="img-circle" style="width: 60px;"></td>
                    <td>
                    <btton class="btn btn-success">编辑</btton>
                    <btton class="btn btn-danger">删除</btton>
                    </td>
                </tr>
                </s:iterator>
                </tbody></table>
                
                <nav>
  <ul class="pagination pagination-sm no-margin pull-right" style="padding-right: 8%; padding-top:2%; padding-bottom: 2%">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
                
        </div><!-- /.box-body -->
        
    </div>

</div>
</body>

 
<!--下面是requirejs框架-->
    <script data-main="app/js/mine/main.js" src="app/js/requirejs/require.js"></script>
   </script>
    
    
</html>


