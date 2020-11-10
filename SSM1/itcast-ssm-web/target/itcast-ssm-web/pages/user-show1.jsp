<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">




    <title>数据 - AdminLTE2定制版</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">




    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <!-- Font Awesome -->
    <!-- Ionicons -->
    <!-- iCheck -->
    <!-- Morris chart -->
    <!-- jvectormap -->
    <!-- Date Picker -->
    <!-- Daterange picker -->
    <!-- Bootstrap time Picker -->
    <!--<link rel="stylesheet" href="${pageContext.request.contextPath}/${pageContext.request.contextPath}/${pageContext.request.contextPath}/plugins/timepicker/bootstrap-timepicker.min.css">-->
    <!-- bootstrap wysihtml5 - text editor -->
    <!--数据表格-->
    <!-- 表格树 -->
    <!-- select2 -->
    <!-- Bootstrap Color Picker -->
    <!-- bootstrap wysihtml5 - text editor -->
    <!--bootstrap-markdown-->
    <!-- Theme style -->
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <!-- Ion Slider -->
    <!-- ion slider Nice -->
    <!-- bootstrap slider -->
    <!-- bootstrap-datetimepicker -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->








    <!-- jQuery 2.2.3 -->
    <!-- jQuery UI 1.11.4 -->
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <!-- Bootstrap 3.3.6 -->
    <!-- Morris.js charts -->
    <!-- Sparkline -->
    <!-- jvectormap -->
    <!-- jQuery Knob Chart -->
    <!-- daterangepicker -->
    <!-- datepicker -->
    <!-- Bootstrap WYSIHTML5 -->
    <!-- Slimscroll -->
    <!-- FastClick -->
    <!-- iCheck -->
    <!-- AdminLTE App -->
    <!-- 表格树 -->
    <!-- select2 -->
    <!-- bootstrap color picker -->
    <!-- bootstrap time picker -->
    <!--<script src="${pageContext.request.contextPath}/${pageContext.request.contextPath}/${pageContext.request.contextPath}/plugins/timepicker/bootstrap-timepicker.min.js"></script>-->
    <!-- Bootstrap WYSIHTML5 -->
    <!--bootstrap-markdown-->
    <!-- CK Editor -->
    <!-- InputMask -->
    <!-- DataTables -->
    <!-- ChartJS 1.0.1 -->
    <!-- FLOT CHARTS -->
    <!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
    <!-- FLOT PIE PLUGIN - also used to draw donut charts -->
    <!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
    <!-- jQuery Knob -->
    <!-- Sparkline -->
    <!-- Morris.js charts -->
    <!-- Ion Slider -->
    <!-- Bootstrap slider -->
    <!-- bootstrap-datetimepicker -->
    <!-- 页面meta /-->

    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/morris/morris.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/select2/select2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
   <jsp:include page="header.jsp"></jsp:include>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <jsp:include page="aside.jsp"></jsp:include>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <!-- @@master = admin-layout.html-->
    <!-- @@block = content -->

    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                用户管理
                <small>用户详情</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/index.jsp"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="${pageContext.request.contextPath}/user/findAll.do">数据管理</a></li>
                <li class="active">数据表单</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">

            <div class="box-body">

                <!--tab页-->
               <%-- <div class="nav-tabs-custom">

                    &lt;%&ndash;<!--tab头-->
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="#tab-label" data-toggle="tab">label显示</a>
                        </li>
                        <li>
                            <a href="#tab-common" data-toggle="tab">基础控件</a>
                        </li>
                        <li>
                            <a href="#tab-select" data-toggle="tab">下拉框</a>
                        </li>
                        <li>
                            <a href="#tab-date" data-toggle="tab">日期控件</a>
                        </li>
                        <li>
                            <a href="#tab-treetable" data-toggle="tab">树表格</a>
                        </li>
                        <li>
                            <a href="#tab-editer" data-toggle="tab">编辑器</a>
                        </li>
                        <li>
                            <a href="#tab-model" data-toggle="tab">模态窗口</a>
                        </li>
                    </ul>
                    <!--tab头/-->&ndash;%&gt;

                    <!--tab内容-->
                    <div class="tab-content">--%>

                       <%-- <!--label显示的内容-->
                        <div class="tab-pane active" id="tab-label">
                            <h5>四列 , 行两个项目</h5>
                            <div class="row data-type">

                                <div class="col-md-2 title">订单编号</div>
                                <div class="col-md-4 data text">
                                    xxxxxxx
                                </div>

                                <div class="col-md-2 title">下单时间</div>
                                <div class="col-md-4 data text">
                                    2019-01-01
                                </div>

                                <div class="col-md-2 title">路线名称</div>
                                <div class="col-md-4 data text">
                                    xxxxxxx
                                </div>

                                <div class="col-md-2 title">出发城市</div>
                                <div class="col-md-4 data text">
                                    北京
                                </div>

                                <div class="col-md-2 title">其他信息</div>
                                <div class="col-md-10 data text">
                                    aaadfsdfdsfsdfdsa
                                </div>

                                <div class="col-md-2 title rowHeight2x">高度2x</div>
                                <div class="col-md-10 data rowHeight2x">
                                    <textarea class="form-control" rows="3" placeholder="请输入..." disabled="disabled"></textarea>
                                </div>

                            </div>


                            <h5>三列</h5>
                            <div class="row data-type">
                                <!--单行数据显示 非表格-->
                                <div class="col-md-2 title item-green rowHeight2x"><i class="glyphicon glyphicon-yen"></i> 销量</div>
                                <div class="col-md-5 data rowHeight2x border-right">
                                    <div class="line">
                                        <div class="pull-left"><i class="glyphicon glyphicon-question-sign"></i> 下单金额1</div>
                                        <div class="pull-right">307,02120</div>
                                    </div>
                                    <div class="line">
                                        <div class="pull-left"><i class="glyphicon glyphicon-question-sign"></i> 下单金额2</div>
                                        <div class="pull-right"><span class="arrowup"><i class="glyphicon glyphicon-arrow-up"></i>2.66%</span></div>
                                    </div>
                                </div>
                                <div class="col-md-5 data rowHeight2x">
                                    <div class="line">
                                        <div class="pull-left"><i class="glyphicon glyphicon-question-sign"></i> 下单客户数</div>
                                        <div class="pull-right">37,02120</div>
                                    </div>
                                    <div class="line">
                                        <div class="pull-left"><i class="glyphicon glyphicon-question-sign"></i> 下单金额</div>
                                        <div class="pull-right"><span class="arrowdown"><i class="glyphicon glyphicon-arrow-down"></i>3.16%</span></div>
                                    </div>
                                </div>
                            </div>




                            <h5>两列、三列、四列</h5>
                            <div class="row data-type">
                                <div class="col-md-2 title item-orange"><i class="glyphicon glyphicon-retweet"></i> 转化</div>
                                <div class="col-md-5 data text border-right">
                                    <div class="pull-left">
                                        <i class="glyphicon glyphicon-question-sign"></i> 店铺成交转化率</div>
                                    <div class="pull-right">2.25%</div>
                                </div>
                                <div class="col-md-5 data text">
                                    <div class="pull-left"><i class="glyphicon glyphicon-question-sign"></i> 先取付款率</div>
                                    <div class="pull-right">88.52%</div>
                                </div>
                            </div>




                            <div class="row data-type">
                                <div class="col-md-2 title item-red"><i class="glyphicon glyphicon-heart"></i> 回访</div>
                                <div class="col-md-5 data text border-right">
                                    <div class="pull-left"><i class="glyphicon glyphicon-question-sign"></i> 30日客户回头率</div>
                                    <div class="pull-right">1.95%</div>
                                </div>
                                <div class="col-md-5 data text">
                                    <div class="pull-left"><i class="glyphicon glyphicon-question-sign"></i> 30日重复购买率</div>
                                    <div class="pull-right">1.97%</div>
                                </div>
                            </div>

                            <div class="row data-type">
                                <div class="col-md-2 title item-blue"><i class="glyphicon glyphicon-circle-arrow-up"></i> 上架</div>
                                <div class="col-md-10 padding-clear">
                                    <div class="col-md-4 data text border-right">
                                        <div class="pull-left"><i class="glyphicon glyphicon-question-sign"></i> 上架商品数量(SKU)</div>
                                        <div class="pull-right">32</div>
                                    </div>
                                    <div class="col-md-4 data text border-right">
                                        <div class="pull-left"><i class="glyphicon glyphicon-question-sign"></i> 上架商品数量(SKU)</div>
                                        <div class="pull-right">28</div>
                                    </div>
                                    <div class="col-md-4 data text">
                                        <div class="pull-left"><i class="glyphicon glyphicon-question-sign"></i> 上架商品数量(SKU)</div>
                                        <div class="pull-right">28</div>
                                    </div>
                                </div>
                            </div>

                            <div class="row data-type">
                                <div class="col-md-2 title item-blue"><i class="glyphicon glyphicon-signal"></i> 流量</div>
                                <div class="col-md-10 padding-clear">
                                    <div class="col-md-3 data text border-right">
                                        <div class="pull-left"><i class="glyphicon glyphicon-question-sign"></i> 浏览量</div>
                                        <div class="pull-right">62,02120</div>
                                    </div>
                                    <div class="col-md-3 data text border-right">
                                        <div class="pull-left"><i class="glyphicon glyphicon-question-sign"></i> 浏览量</div>
                                        <div class="pull-right">62,02120</div>
                                    </div>
                                    <div class="col-md-3 data text border-right">
                                        <div class="pull-left"><i class="glyphicon glyphicon-question-sign"></i> 浏览量</div>
                                        <div class="pull-right">62,02120</div>
                                    </div>
                                    <div class="col-md-3 data text">
                                        <div class="pull-left"><i class="glyphicon glyphicon-question-sign"></i> 浏览量</div>
                                        <div class="pull-right">62,02120</div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!--label显示的内容/-->--%>

                       <%-- <!--基础控件-->
                        <div class="tab-pane" id="tab-common">
                            <div class="row data-type">

                                <div class="col-md-2 title">文本</div>
                                <div class="col-md-4 data">
                                    <input type="text" class="form-control" placeholder="文本" value="">
                                </div>

                                <div class="col-md-2 title">密码</div>
                                <div class="col-md-4 data">
                                    <input type="password" class="form-control" placeholder="密码" value="">
                                </div>

                                <div class="col-md-2 title">用户名</div>
                                <div class="col-md-4 data">
                                    <div class="input-group">
                                        <span class="input-group-addon">@</span>
                                        <input type="text" class="form-control" placeholder="用户名">
                                    </div>
                                </div>

                                <div class="col-md-2 title">整数</div>
                                <div class="col-md-4 data">
                                    <div class="input-group">
                                        <input type="text" class="form-control">
                                        <span class="input-group-addon">.00</span>
                                    </div>
                                </div>

                                <div class="col-md-2 title">货币</div>
                                <div class="col-md-4 data">
                                    <div class="input-group">
                                        <span class="input-group-addon">¥</span>
                                        <input type="text" class="form-control">
                                        <span class="input-group-addon">.00</span>
                                    </div>
                                </div>

                                <div class="col-md-2 title">图标输入框</div>
                                <div class="col-md-4 data">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-address-book"></i></span>
                                        <input type="text" class="form-control" placeholder="请输入...">
                                    </div>
                                </div>

                                <div class="col-md-2 title">多选checkbox</div>
                                <div class="col-md-10 data line-height36">
                                    <div class="form-group form-inline">
                                        <div class="checkbox"><label><input type="checkbox" value="1"> 选项1</label></div>
                                        <div class="checkbox"><label><input type="checkbox" value="2"> 选项2</label></div>
                                        <div class="checkbox"><label><input type="checkbox" value="3"> 选项3</label></div>
                                        <div class="checkbox"><label><input type="checkbox" value="4"> 选项4</label></div>
                                        <div class="checkbox"><label><input type="checkbox" value="5"> 选项5</label></div>
                                    </div>
                                </div>

                                <div class="col-md-2 title">多选radio</div>
                                <div class="col-md-10 data">
                                    <div class="form-group form-inline">
                                        <div class="radio"><label><input type="radio" name="optionsRadios" value="1"> 选项1</label></div>
                                        <div class="radio"><label><input type="radio" name="optionsRadios" value="2"> 选项2</label></div>
                                        <div class="radio"><label><input type="radio" name="optionsRadios" value="3"> 选项3</label></div>
                                        <div class="radio"><label><input type="radio" name="optionsRadios" value="4"> 选项4</label></div>
                                        <div class="radio"><label><input type="radio" name="optionsRadios" value="5"> 选项5</label></div>
                                    </div>
                                </div>

                                <div class="col-md-2 title">文件上传</div>
                                <div class="col-md-10 data">
                                    <a href="javascript:;" class="a-upload">
                                        <input type="file" name="" id="">点击这里上传文件
                                    </a>
                                </div>

                                <div class="col-md-2 title rowHeight2x">内容输入框</div>
                                <div class="col-md-10 data rowHeight2x">
                                    <textarea class="form-control" rows="3" placeholder="请输入..."></textarea>
                                </div>

                                <div class="col-md-2 title">颜色选取</div>
                                <div class="col-md-4 data">
                                    <input type="text" class="form-control my-colorpicker1">
                                </div>

                                <div class="col-md-2 title">颜色选取[选取按钮]</div>
                                <div class="col-md-4 data">
                                    <div class="input-group my-colorpicker2">
                                        <input type="text" class="form-control">
                                        <div class="input-group-addon"><i class="fa fa-circle-thin"></i></div>
                                    </div>
                                </div>

                                <div class="col-md-2 title"></div>
                                <div class="col-md-10 data text-center">
                                    <button type="button" class="btn bg-maroon">保存</button>
                                    <button type="button" class="btn bg-default" onclick="history.back(-1);">返回</button>
                                </div>

                            </div>
                        </div>
                        <!--基础控件/-->--%>

                        <!--下拉框-->
                        <%--<div class="tab-pane" id="tab-select">
                            <div class="row data-type">

                                <div class="col-md-2 title">下拉框[标准]</div>
                                <div class="col-md-4 data">
                                    <select class="form-control">
                                        <option>option 1</option>
                                        <option>option 2</option>
                                        <option>option 3</option>
                                        <option>option 4</option>
                                        <option>option 5</option>
                                    </select>
                                </div>

                                <div class="col-md-2 title">下拉框[输入单选]</div>
                                <div class="col-md-4 data">
                                    <select class="form-control select2" style="width: 100%;">
                                        <option selected="selected">Alabama</option>
                                        <option>Alaska</option>
                                        <option disabled="disabled">California</option>
                                        <option>Delaware</option>
                                        <option>Tennessee</option>
                                        <option>Texas</option>
                                        <option>Washington</option>
                                    </select>
                                </div>

                                <div class="col-md-2 title">下拉框[输入多选]</div>
                                <div class="col-md-10 data">
                                    <select class="form-control select2" multiple="multiple" data-placeholder="可多选" style="width: 100%;">
                                        <option>Alabama</option>
                                        <option>Alaska</option>
                                        <option>California</option>
                                        <option>Delaware</option>
                                        <option>Tennessee</option>
                                        <option>Texas</option>
                                        <option>Washington</option>
                                    </select>
                                </div>


                            </div>
                        </div>
                        <!--下拉框/-->

                        <!--日期控件-->
                        <div class="tab-pane" id="tab-date">
                            <div class="row data-type">

                                <div class="col-md-2 title">日期[单选]</div>
                                <div class="col-md-4 data">
                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control pull-right" id="datepicker">
                                    </div>
                                </div>

                                <div class="col-md-2 title">日期时间[单选]</div>
                                <div class="col-md-4 data">
                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control pull-right" id="dateTimePicker">
                                    </div>
                                </div>

                                <div class="col-md-2 title">日期[区间]</div>
                                <div class="col-md-4 data">
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control pull-right" id="reservation">
                                    </div>
                                </div>

                                <div class="col-md-2 title">日期时间[区间]</div>
                                <div class="col-md-4 data">
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-clock-o"></i>
                                        </div>
                                        <input type="text" class="form-control pull-right" id="reservationtime">
                                    </div>
                                </div>

                                <div class="col-md-2 title">日期[时间段]</div>
                                <div class="col-md-4 data">
                                    <div class="input-group">
                                        <button type="button" class="btn btn-default pull-right" id="daterange-btn">
            <span>
                <i class="fa fa-calendar"></i> 日期选取
            </span>
                                            <i class="fa fa-caret-down"></i>
                                        </button>
                                    </div>
                                </div>


                            </div>
                        </div>
                        <!--日期控件/-->--%>

                        <!--树表格-->
                        <div class="tab-pane" id="tab-treetable">
                            <table id="collapse-table" class="table table-bordered table-hover dataTable">
                                <thead>
                                <tr>
                                    <th>用户</th>
                                    <th>描述</th>
                                </tr>
                                </thead>
                                <tr data-tt-id="0">
                                    <td colspan="2">${user.username}</td>
                                </tr>

                                <tbody>
                                <c:forEach items="${user.roles}" var="role">
                                <tr data-tt-id="1" data-tt-parent-id="0">
                                    <td>${role.roleName}</td>
                                    <td>${role.roleDesc}</td>
                                </tr>
                                 <c:forEach items="${role.permissions}" var="permission">
                                <tr data-tt-id="1-1" data-tt-parent-id="1">
                                    <td>${permission.permissionName}</td>
                                    <td>${permission.url}</td>
                                </tr>
                                 </c:forEach>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!--树表格/-->

                        <!--编辑器-->
                       <%-- <div class="tab-pane" id="tab-editer">
                            <div class="row data-type">

                                <div class="col-md-2 title editer">WYSIHTML5</div>
                                <div class="col-md-10 data editer">
                                    <textarea class="textarea" placeholder="轻量级编辑器，适合文字编辑" style="width: 100%; height: 265px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                                </div>

                                <div class="col-md-2 title editer">Markdown</div>
                                <div class="col-md-10 data editer">
                                    <textarea id="markdown-textarea" name="content" rows="13"></textarea>
                                </div>

                                <div class="col-md-2 title editer">CK Editor</div>
                                <div class="col-md-10 data editer">
                                        <textarea id="editor1" name="editor1" rows="10" cols="80">
            专业级内容编辑器, 适用强文字编辑应用
        </textarea>
                                </div>

                            </div>
                        </div>
                        <!--编辑器/-->

                        <!--模态窗口-->
                        <div class="tab-pane" id="tab-model">
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                                弹出模式对话框
                            </button>

                            <div id="myModal" class="modal modal-primary" role="dialog">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">标题</h4>
                                        </div>
                                        <div class="modal-body">


                                            <div class="box-body">
                                                <div class="form-horizontal">

                                                    <div class="form-group">
                                                        <label for="inputNumber2" class="col-sm-2 control-label">金额:</label>
                                                        <div class="col-sm-5">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">$</span>
                                                                <input id="inputNumber2" type="text" class="form-control" placeholder="输入金额整数">
                                                                <span class="input-group-addon">.00</span>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label">金额范围:</label>
                                                        <div class="col-sm-5">
                                                            <div class="input-group">
                                                                <input type="text" class="form-control" placeholder="金额">
                                                                <span class="input-group-addon">-</span>
                                                                <input type="text" class="form-control" placeholder="金额">
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="inputPassword3" class="col-sm-2 control-label">密码:</label>
                                                        <div class="col-sm-5">
                                                            <input type="password" class="form-control" placeholder="密码" value="">
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label">选框:</label>
                                                        <div class="col-sm-5">
                                                            <div class="checkbox">
                                                                <label><input type="checkbox" name="c1" checked="checked"> 选框1</label>
                                                                <label><input type="checkbox" name="c1"> 选框2</label>
                                                                <label><input type="checkbox" name="c1"> 选框3</label>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>



                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-outline" data-dismiss="modal">关闭</button>
                                            <button type="button" class="btn btn-outline" data-dismiss="modal">保存</button>
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>

                                <!-- /.modal-dialog -->
                            </div>
                            <!-- /.modal -->
                        </div>
                        <!--模态窗口/-->--%>


                <!--tab页/-->


                <!-- .box-footer
    <div class="box-footer"></div>
    -->
                <!-- /.box-footer-->

            </div>

        </section>
        <!-- 正文区域 /-->

    </div>
    <!-- @@close -->
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0.8
        </div>
        <strong>Copyright &copy; 2014-2017 <a href="http://www.itcast.cn">研究院研发部</a>.</strong> All rights reserved.
    </footer>
    <!-- 底部导航 /-->

</div>


<script src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
<script src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
<script src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
<script src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
<script src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
<script src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
<script src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script>
    $(document).ready(function() {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });
    });


    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }



    $(document).ready(function() {

        // 颜色选取器
        $(".my-colorpicker1").colorpicker();
        $(".my-colorpicker2").colorpicker();

    });




    $(document).ready(function() {
        // 选择框
        $(".select2").select2();
    });




    $(document).ready(function() {

        //Date picker
        $('#datepicker').datepicker({
            autoclose: true,
            language: 'zh-CN'
        });

        // datetime picker
        $('#dateTimePicker').datetimepicker({
            format: "mm/dd/yyyy - hh:ii",
            autoclose: true,
            todayBtn: true,
            language: 'zh-CN'
        });

        //Date range picker
        $('#reservation').daterangepicker({
            locale: {
                applyLabel: '确认',
                cancelLabel: '取消',
                fromLabel: '起始时间',
                toLabel: '结束时间',
                customRangeLabel: '自定义',
                firstDay: 1
            },
            opens: 'left', // 日期选择框的弹出位置
            separator: ' 至 '
            //showWeekNumbers : true,     // 是否显示第几周
        });

        //Date range picker with time picker
        $('#reservationtime').daterangepicker({
            timePicker: true,
            timePickerIncrement: 30,
            format: 'MM/DD/YYYY h:mm A',
            locale: {
                applyLabel: '确认',
                cancelLabel: '取消',
                fromLabel: '起始时间',
                toLabel: '结束时间',
                customRangeLabel: '自定义',
                firstDay: 1
            },
            opens: 'right', // 日期选择框的弹出位置
            separator: ' 至 '
        });

        //Date range as a button
        $('#daterange-btn').daterangepicker({
                locale: {
                    applyLabel: '确认',
                    cancelLabel: '取消',
                    fromLabel: '起始时间',
                    toLabel: '结束时间',
                    customRangeLabel: '自定义',
                    firstDay: 1
                },
                opens: 'right', // 日期选择框的弹出位置
                separator: ' 至 ',
                ranges: {
                    '今日': [moment(), moment()],
                    '昨日': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    '最近7日': [moment().subtract(6, 'days'), moment()],
                    '最近30日': [moment().subtract(29, 'days'), moment()],
                    '本月': [moment().startOf('month'), moment().endOf('month')],
                    '上个月': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                startDate: moment().subtract(29, 'days'),
                endDate: moment()
            },
            function(start, end) {
                $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            }
        );

    });




    $(document).ready(function() {

        /*table tree*/
        $("#collapse-table").treetable({
            expandable: true
        });

    });




    $(document).ready(function() {

        CKEDITOR.replace('editor1');

        // $(".textarea").wysihtml5({
        //     locale:'zh-CN'
        // });

        $("#markdown-textarea").markdown({
            language: 'zh',
            autofocus: false,
            savable: false
        });

    });



    $(document).ready(function() {

        // 激活导航位置
        setSidebarActive("admin-dataform");

    });
</script>
</body>

</html>
