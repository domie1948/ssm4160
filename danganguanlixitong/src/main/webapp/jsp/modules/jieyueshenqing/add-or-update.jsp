<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑借阅申请</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">借阅申请管理</li>
                        <li class="breadcrumb-item active">编辑借阅申请</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">借阅申请信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->

                                <%-- 用户信息 --%>
                                <div class="form-group col-md-6 aaaaaa">
                                    <label>用户</label>
                                    <div>
                                        <select id="yonghuSelect" name="yonghuSelect"
                                                class="selectpicker form-control"  data-live-search="true"
                                                title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-6 aaaaaaa">
                                    <label>用户姓名</label>
                                    <input id="yonghuName" name="yonghuName" class="form-control"
                                           placeholder="用户姓名" readonly>
                                </div>
                                <div class="form-group col-md-6 aaaaaaa">
                                    <label>用户手机号</label>
                                    <input id="yonghuPhone" name="yonghuPhone" class="form-control"
                                           placeholder="用户手机号" readonly>
                                </div>
                                <div class="form-group col-md-6 aaaaaaa">
                                    <label>用户身份证号</label>
                                    <input id="yonghuIdNumber" name="yonghuIdNumber" class="form-control"
                                           placeholder="用户身份证号" readonly>
                                </div>
                                <div class="form-group col-md-6 aaaaaaa">
                                    <label>单位</label>
                                    <input id="yonghuDanwei" name="yonghuDanwei" class="form-control"
                                           placeholder="单位" readonly>
                                </div>
                                <div class="form-group col-md-6 aaaaaaa">
                                    <label>用户照片</label>
                                    <img id="yonghuPhotoImg" src="" width="100" height="100">
                                </div>

                                <%-- 借阅信息 --%>
                                <div class="form-group col-md-6 ffffff">
                                    <label>借阅用途</label>
                                    <input id="yongtu" name="yongtu" class="form-control"
                                           placeholder="借阅用途">
                                </div>
                                <div class="form-group col-md-6">
                                    <label>借阅部门</label>
                                    <select id="bumenTypesSelect" name="bumenTypes" class="form-control">
                                    </select>
                                </div>
                                <div class="form-group col-md-6 ffffff">
                                    <label>借阅时间</label>
                                    <input id="jieyueTime-input" name="jieyueTime" type="text" class="form-control layui-input">
                                </div>
                                <div class="form-group col-md-6 ffffff">
                                    <label>归还时间</label>
                                    <input id="guihuanTime-input" name="guihuanTime" type="text" class="form-control layui-input">
                                </div>
                                <div class="form-group col-md-6 ffffff">
                                    <label>供电公司</label>
                                    <input id="gongdiangongsi" name="gongdiangongsi" class="form-control"
                                           placeholder="供电公司">
                                </div>



                                <%-- 档案信息 --%>
                                    <div class="form-group col-md-6 gggggg">
                                        <label>档案</label>
                                        <div>
                                            <select id="danganSelect" name="danganSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>档案编号</label>
                                        <input id="danganBianhao" name="danganBianhao" class="form-control"
                                               placeholder="档案编号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 ">
                                        <label>档案名称</label>
                                        <input id="danganName" name="danganName" class="form-control"
                                               placeholder="档案名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>档案类型</label>
                                        <input id="danganValue" name="danganValue" class="form-control"
                                               placeholder="档案类型" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>档案图片</label>
                                        <img id="danganPhotoImg" src="" width="100" height="100">
                                    </div>
                                <%-- 借阅部领导 --%>
                                    <div class="form-group col-md-6 aaaaaa">
                                        <label>借阅部领导</label>
                                        <div>
                                            <select id="jieyuebuSelect" name="jieyuebuSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 bbbbbbb">
                                        <label>借阅部领导姓名</label>
                                        <input id="jieyuebuName" name="jieyuebuName" class="form-control"
                                               placeholder="借阅部领导姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 bbbbbbb">
                                        <label>借阅部领导手机号</label>
                                        <input id="jieyuebuPhone" name="jieyuebuPhone" class="form-control"
                                               placeholder="借阅部领导手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 bbbbbbb">
                                        <label>借阅部领导身份证号</label>
                                        <input id="jieyuebuIdNumber" name="jieyuebuIdNumber" class="form-control"
                                               placeholder="借阅部领导身份证号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 bbbbbbb">
                                        <label>借阅部领导照片</label>
                                        <img id="jieyuebuPhotoImg" src="" width="100" height="100">
                                    </div>
                                <div class="form-group col-md-6 bbbbbb">
                                    <label>借阅部领导审批类型</label>
                                    <select id="jieyuebuTypesSelect" name="jieyuebuTypes" class="form-control">
                                    </select>
                                </div>
                                <div class="form-group aaaaa  col-md-6 bbbbbb">
                                    <label>借阅部领导审批意见</label>
                                    <input id="jieyuebuContentupload" name="file" type="file">
                                    <script id="jieyuebuContentEditor" type="text/plain"
                                            style="width:100%;height:230px;"></script>
                                    <script type = "text/javascript" >
                                    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                    //相见文档配置属于你自己的编译器
                                    var jieyuebuContentUe = UE.getEditor('jieyuebuContentEditor', {
                                        toolbars: [
                                            [
                                                'undo', //撤销
                                                'bold', //加粗
                                                'redo', //重做
                                                'underline', //下划线
                                                'horizontal', //分隔线
                                                'inserttitle', //插入标题
                                                'cleardoc', //清空文档
                                                'fontfamily', //字体
                                                'fontsize', //字号
                                                'paragraph', //段落格式
                                                'inserttable', //插入表格
                                                'justifyleft', //居左对齐
                                                'justifyright', //居右对齐
                                                'justifycenter', //居中对
                                                'justifyjustify', //两端对齐
                                                'forecolor', //字体颜色
                                                'fullscreen', //全屏
                                                'edittip ', //编辑提示
                                                'customstyle', //自定义标题
                                            ]
                                        ]
                                    });
                                    </script>
                                    <input type="hidden" name="jieyuebuContent" id="jieyuebuContent-input">
                                </div>
                                <div class="form-group col-md-6 bbbbbb  bbbbbbb">
                                    <label>借阅部领导审批时间</label>
                                    <input id="jieyuebuTime-input" name="jieyuebuTime" type="text" class="form-control layui-input">
                                </div>


                                <%-- 主管领导 --%>

                                <div class="form-group col-md-6 aaaaaa">
                                    <label>主管领导</label>
                                    <div>
                                        <select id="zhuguanSelect" name="zhuguanSelect"
                                                class="selectpicker form-control"  data-live-search="true"
                                                title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-6 ccccccc">
                                    <label>主管领导姓名</label>
                                    <input id="zhuguanName" name="zhuguanName" class="form-control"
                                           placeholder="主管领导姓名" readonly>
                                </div>
                                <div class="form-group col-md-6 ccccccc">
                                    <label>主管领导手机号</label>
                                    <input id="zhuguanPhone" name="zhuguanPhone" class="form-control"
                                           placeholder="主管领导手机号" readonly>
                                </div>
                                <div class="form-group col-md-6 ccccccc">
                                    <label>主管领导身份证号</label>
                                    <input id="zhuguanIdNumber" name="zhuguanIdNumber" class="form-control"
                                           placeholder="主管领导身份证号" readonly>
                                </div>
                                <div class="form-group col-md-6 ccccccc">
                                    <label>主管领导照片</label>
                                    <img id="zhuguanPhotoImg" src="" width="100" height="100">
                                </div>

                                <div class="form-group col-md-6 cccccc">
                                    <label>主管领导审批类型</label>
                                    <select id="zhuguanTypesSelect" name="zhuguanTypes" class="form-control">
                                    </select>
                                </div>
                                <div class="form-group  col-md-6 cccccc">
                                    <label>主管领导审批意见</label>
                                    <input id="zhuguanContentupload" name="file" type="file">
                                    <script id="zhuguanContentEditor" type="text/plain"
                                            style="width:100%;height:230px;"></script>
                                    <script type = "text/javascript" >
                                    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                    //相见文档配置属于你自己的编译器
                                    var zhuguanContentUe = UE.getEditor('zhuguanContentEditor', {
                                        toolbars: [
                                            [
                                                'undo', //撤销
                                                'bold', //加粗
                                                'redo', //重做
                                                'underline', //下划线
                                                'horizontal', //分隔线
                                                'inserttitle', //插入标题
                                                'cleardoc', //清空文档
                                                'fontfamily', //字体
                                                'fontsize', //字号
                                                'paragraph', //段落格式
                                                'inserttable', //插入表格
                                                'justifyleft', //居左对齐
                                                'justifyright', //居右对齐
                                                'justifycenter', //居中对
                                                'justifyjustify', //两端对齐
                                                'forecolor', //字体颜色
                                                'fullscreen', //全屏
                                                'edittip ', //编辑提示
                                                'customstyle', //自定义标题
                                            ]
                                        ]
                                    });
                                    </script>
                                    <input type="hidden" name="zhuguanContent" id="zhuguanContent-input">
                                </div>
                                <div class="form-group col-md-6 cccccc ccccccc">
                                    <label>主管领导审批时间</label>
                                    <input id="zhuguanTime-input" name="zhuguanTime" type="text" class="form-control layui-input">
                                </div>
                                <%-- 综合部主任 --%>

                                <div class="form-group col-md-6 aaaaaa">
                                    <label>综合部主任</label>
                                    <div>
                                        <select id="zhurenSelect" name="zhurenSelect"
                                                class="selectpicker form-control"  data-live-search="true"
                                                title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-6 ddddddd">
                                    <label>综合部主任姓名</label>
                                    <input id="zhurenName" name="zhurenName" class="form-control"
                                           placeholder="综合部主任姓名" readonly>
                                </div>
                                <div class="form-group col-md-6 ddddddd">
                                    <label>综合部主任手机号</label>
                                    <input id="zhurenPhone" name="zhurenPhone" class="form-control"
                                           placeholder="综合部主任手机号" readonly>
                                </div>
                                <div class="form-group col-md-6 ddddddd">
                                    <label>综合部主任身份证号</label>
                                    <input id="zhurenIdNumber" name="zhurenIdNumber" class="form-control"
                                           placeholder="综合部主任身份证号" readonly>
                                </div>
                                <div class="form-group col-md-6 ddddddd">
                                    <label>综合部主任照片</label>
                                    <img id="zhurenPhotoImg" src="" width="100" height="100">
                                </div>
                                <div class="form-group col-md-6 dddddd">
                                    <label>综合部主任审批类型</label>
                                    <select id="zhurenTypesSelect" name="zhurenTypes" class="form-control">
                                    </select>
                                </div>
                                <div class="form-group  col-md-6 dddddd">
                                    <label>综合部主任审批意见</label>
                                    <input id="zhurenContentupload" name="file" type="file">
                                    <script id="zhurenContentEditor" type="text/plain"
                                            style="width:100%;height:230px;"></script>
                                    <script type = "text/javascript" >
                                    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                    //相见文档配置属于你自己的编译器
                                    var zhurenContentUe = UE.getEditor('zhurenContentEditor', {
                                        toolbars: [
                                            [
                                                'undo', //撤销
                                                'bold', //加粗
                                                'redo', //重做
                                                'underline', //下划线
                                                'horizontal', //分隔线
                                                'inserttitle', //插入标题
                                                'cleardoc', //清空文档
                                                'fontfamily', //字体
                                                'fontsize', //字号
                                                'paragraph', //段落格式
                                                'inserttable', //插入表格
                                                'justifyleft', //居左对齐
                                                'justifyright', //居右对齐
                                                'justifycenter', //居中对
                                                'justifyjustify', //两端对齐
                                                'forecolor', //字体颜色
                                                'fullscreen', //全屏
                                                'edittip ', //编辑提示
                                                'customstyle', //自定义标题
                                            ]
                                        ]
                                    });
                                    </script>
                                    <input type="hidden" name="zhurenContent" id="zhurenContent-input">
                                </div>
                                <div class="form-group col-md-6 dddddd ddddddd">
                                    <label>综合部主任审批时间</label>
                                    <input id="zhurenTime-input" name="zhurenTime" type="text" class="form-control layui-input">
                                </div>

                                <%-- 专责人员 --%>
                                    <div class="form-group col-md-6 aaaaaa">
                                        <label>专责人员</label>
                                        <div>
                                            <select id="wenshudanganSelect" name="wenshudanganSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 eeeeeee">
                                        <label>专责人员姓名</label>
                                        <input id="wenshudanganName" name="wenshudanganName" class="form-control"
                                               placeholder="专责人员姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 eeeeeee">
                                        <label>专责人员手机号</label>
                                        <input id="wenshudanganPhone" name="wenshudanganPhone" class="form-control"
                                               placeholder="专责人员手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 eeeeeee">
                                        <label>专责人员身份证号</label>
                                        <input id="wenshudanganIdNumber" name="wenshudanganIdNumber" class="form-control"
                                               placeholder="专责人员身份证号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 eeeeeee">
                                        <label>专责人员照片</label>
                                        <img id="wenshudanganPhotoImg" src="" width="100" height="100">
                                    </div>
                                <div class="form-group col-md-6 eeeeee">
                                    <label>专责人员审批类型</label>
                                    <select id="wenshudanganTypesSelect" name="wenshudanganTypes" class="form-control">
                                    </select>
                                </div>
                                <div class="form-group  col-md-6 eeeeee">
                                    <label>专责人员审批意见</label>
                                    <input id="wenshudanganContentupload" name="file" type="file">
                                    <script id="wenshudanganContentEditor" type="text/plain"
                                            style="width:100%;height:230px;"></script>
                                    <script type = "text/javascript" >
                                    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                    //相见文档配置属于你自己的编译器
                                    var wenshudanganContentUe = UE.getEditor('wenshudanganContentEditor', {
                                        toolbars: [
                                            [
                                                'undo', //撤销
                                                'bold', //加粗
                                                'redo', //重做
                                                'underline', //下划线
                                                'horizontal', //分隔线
                                                'inserttitle', //插入标题
                                                'cleardoc', //清空文档
                                                'fontfamily', //字体
                                                'fontsize', //字号
                                                'paragraph', //段落格式
                                                'inserttable', //插入表格
                                                'justifyleft', //居左对齐
                                                'justifyright', //居右对齐
                                                'justifycenter', //居中对
                                                'justifyjustify', //两端对齐
                                                'forecolor', //字体颜色
                                                'fullscreen', //全屏
                                                'edittip ', //编辑提示
                                                'customstyle', //自定义标题
                                            ]
                                        ]
                                    });
                                    </script>
                                    <input type="hidden" name="wenshudanganContent" id="wenshudanganContent-input">
                                </div>
                                <div class="form-group col-md-6 eeeeee eeeeeee">
                                    <label>专责人员审批时间</label>
                                    <input id="wenshudanganTime-input" name="wenshudanganTime" type="text" class="form-control layui-input">
                                </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="yonghuId" name="yonghuId" type="hidden">
                                <input id="danganId" name="danganId" type="hidden">

                                <input id="jieyuebuId" name="jieyuebuId" type="hidden">

                                <input id="zhuguanId" name="zhuguanId" type="hidden">

                                <input id="zhurenId" name="zhurenId" type="hidden">

                                <input id="wenshudanganId" name="wenshudanganId" type="hidden">

                                    <div class="form-group col-md-6 pppppp">
                                        <label>经办人</label>
                                        <input id="jingbanren" name="jingbanren" class="form-control"
                                               placeholder="经办人">
                                    </div>
                                    <div class="form-group col-md-6 pppppp">
                                        <label>经办时间</label>
                                        <input id="jingbanrenTime-input" name="jingbanrenTime" type="text" class="form-control layui-input">
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydatePro/laydatePro.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "jieyueshenqing";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var bumenTypesOptions = [];
    var jieyuebuTypesOptions = [];
    var zhuguanTypesOptions = [];
    var zhurenTypesOptions = [];
    var wenshudanganTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var danganOptions = [];
    var jieyuebuOptions = [];
    var wenshudanganOptions = [];
    var yonghuOptions = [];
    var zhuguanOptions = [];
    var zhurenOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

        $('#jieyuebuContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('jieyuebuContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


        $('#zhuguanContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('zhuguanContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


        $('#zhurenContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('zhurenContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


        $('#wenshudanganContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('wenshudanganContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            // if($("#yonghuId") !=null){
            //     var yonghuId = $("#yonghuId").val();
            //     if(yonghuId == null || yonghuId =='' || yonghuId == 'null'){
            //         alert("申请人不能为空");
            //         return;
            //     }
            // }
            if($("#danganId") !=null){
                var danganId = $("#danganId").val();
                if(danganId == null || danganId =='' || danganId == 'null'){
                    alert("档案不能为空");
                    return;
                }
            }
            // if($("#jieyuebuId") !=null){
            //     var jieyuebuId = $("#jieyuebuId").val();
            //     if(jieyuebuId == null || jieyuebuId =='' || jieyuebuId == 'null'){
            //         alert("借阅部领导不能为空");
            //         return;
            //     }
            // }
            // if($("#zhuguanId") !=null){
            //     var zhuguanId = $("#zhuguanId").val();
            //     if(zhuguanId == null || zhuguanId =='' || zhuguanId == 'null'){
            //         alert("主管领导不能为空");
            //         return;
            //     }
            // }
            // if($("#zhurenId") !=null){
            //     var zhurenId = $("#zhurenId").val();
            //     if(zhurenId == null || zhurenId =='' || zhurenId == 'null'){
            //         alert("综合部主任不能为空");
            //         return;
            //     }
            // }
            // if($("#wenshudanganId") !=null){
            //     var wenshudanganId = $("#wenshudanganId").val();
            //     if(wenshudanganId == null || wenshudanganId =='' || wenshudanganId == 'null'){
            //         alert("专责人员不能为空");
            //         return;
            //     }
            // }
            debugger
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            debugger
            var val = $("#zhuguanTime").val();
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("jieyueshenqing/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addjieyueshenqing');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function bumenTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=bumen_types", "GET", {}, (res) => {
                if(res.code == 0){
                    bumenTypesOptions = res.data.list;
                }
            });
        }
        function jieyuebuTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=jieyuebu_types", "GET", {}, (res) => {
                if(res.code == 0){
                    jieyuebuTypesOptions = res.data.list;
                }
            });
        }
        function zhuguanTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=zhuguan_types", "GET", {}, (res) => {
                if(res.code == 0){
                    zhuguanTypesOptions = res.data.list;
                }
            });
        }
        function zhurenTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=zhuren_types", "GET", {}, (res) => {
                if(res.code == 0){
                    zhurenTypesOptions = res.data.list;
                }
            });
        }
        function wenshudanganTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=wenshudangan_types", "GET", {}, (res) => {
                if(res.code == 0){
                    wenshudanganTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function danganSelect() {
            //填充下拉框选项
            http("dangan/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    danganOptions = res.data.list;
                }
            });
        }

        function danganSelectOne(id) {
            http("dangan/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                danganShowImg();
                danganShowVideo();
                danganDataBind();
            }
        });
        }
        function jieyuebuSelect() {
            //填充下拉框选项
            http("jieyuebu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    jieyuebuOptions = res.data.list;
                }
            });
        }

        function jieyuebuSelectOne(id) {
            http("jieyuebu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                jieyuebuShowImg();
                jieyuebuShowVideo();
                jieyuebuDataBind();
            }
        });
        }
        function wenshudanganSelect() {
            //填充下拉框选项
            http("wenshudangan/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    wenshudanganOptions = res.data.list;
                }
            });
        }

        function wenshudanganSelectOne(id) {
            http("wenshudangan/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                wenshudanganShowImg();
                wenshudanganShowVideo();
                wenshudanganDataBind();
            }
        });
        }
        function yonghuSelect() {
            //填充下拉框选项
            http("yonghu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    yonghuOptions = res.data.list;
                }
            });
        }

        function yonghuSelectOne(id) {
            http("yonghu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                yonghuShowImg();
                yonghuShowVideo();
                yonghuDataBind();
            }
        });
        }
        function zhuguanSelect() {
            //填充下拉框选项
            http("zhuguan/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    zhuguanOptions = res.data.list;
                }
            });
        }

        function zhuguanSelectOne(id) {
            http("zhuguan/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                zhuguanShowImg();
                zhuguanShowVideo();
                zhuguanDataBind();
            }
        });
        }
        function zhurenSelect() {
            //填充下拉框选项
            http("zhuren/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    zhurenOptions = res.data.list;
                }
            });
        }

        function zhurenSelectOne(id) {
            http("zhuren/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                zhurenShowImg();
                zhurenShowVideo();
                zhurenDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationBumentypesSelect(){
            var bumenTypesSelect = document.getElementById('bumenTypesSelect');
            if(bumenTypesSelect != null && bumenTypesOptions != null  && bumenTypesOptions.length > 0 ){
                for (var i = 0; i < bumenTypesOptions.length; i++) {
                    bumenTypesSelect.add(new Option(bumenTypesOptions[i].indexName,bumenTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationJieyuebutypesSelect(){
            var jieyuebuTypesSelect = document.getElementById('jieyuebuTypesSelect');
            if(jieyuebuTypesSelect != null && jieyuebuTypesOptions != null  && jieyuebuTypesOptions.length > 0 ){
                for (var i = 0; i < jieyuebuTypesOptions.length; i++) {
                    jieyuebuTypesSelect.add(new Option(jieyuebuTypesOptions[i].indexName,jieyuebuTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationZhuguantypesSelect(){
            var zhuguanTypesSelect = document.getElementById('zhuguanTypesSelect');
            if(zhuguanTypesSelect != null && zhuguanTypesOptions != null  && zhuguanTypesOptions.length > 0 ){
                for (var i = 0; i < zhuguanTypesOptions.length; i++) {
                    zhuguanTypesSelect.add(new Option(zhuguanTypesOptions[i].indexName,zhuguanTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationZhurentypesSelect(){
            var zhurenTypesSelect = document.getElementById('zhurenTypesSelect');
            if(zhurenTypesSelect != null && zhurenTypesOptions != null  && zhurenTypesOptions.length > 0 ){
                for (var i = 0; i < zhurenTypesOptions.length; i++) {
                    zhurenTypesSelect.add(new Option(zhurenTypesOptions[i].indexName,zhurenTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationWenshudangantypesSelect(){
            var wenshudanganTypesSelect = document.getElementById('wenshudanganTypesSelect');
            if(wenshudanganTypesSelect != null && wenshudanganTypesOptions != null  && wenshudanganTypesOptions.length > 0 ){
                for (var i = 0; i < wenshudanganTypesOptions.length; i++) {
                    wenshudanganTypesSelect.add(new Option(wenshudanganTypesOptions[i].indexName,wenshudanganTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationdanganSelect() {
            var danganSelect = document.getElementById('danganSelect');
            if(danganSelect != null && danganOptions != null  && danganOptions.length > 0 ) {
                for (var i = 0; i < danganOptions.length; i++) {
                        danganSelect.add(new Option(danganOptions[i].danganName, danganOptions[i].id));
                }

                $("#danganSelect").change(function(e) {
                        danganSelectOne(e.target.value);
                });
            }

        }

        function initializationjieyuebuSelect() {
            var jieyuebuSelect = document.getElementById('jieyuebuSelect');
            if(jieyuebuSelect != null && jieyuebuOptions != null  && jieyuebuOptions.length > 0 ) {
                for (var i = 0; i < jieyuebuOptions.length; i++) {
                        jieyuebuSelect.add(new Option(jieyuebuOptions[i].jieyuebuName, jieyuebuOptions[i].id));
                }

                $("#jieyuebuSelect").change(function(e) {
                        jieyuebuSelectOne(e.target.value);
                });
            }

        }

        function initializationwenshudanganSelect() {
            var wenshudanganSelect = document.getElementById('wenshudanganSelect');
            if(wenshudanganSelect != null && wenshudanganOptions != null  && wenshudanganOptions.length > 0 ) {
                for (var i = 0; i < wenshudanganOptions.length; i++) {
                        wenshudanganSelect.add(new Option(wenshudanganOptions[i].wenshudanganName, wenshudanganOptions[i].id));
                }

                $("#wenshudanganSelect").change(function(e) {
                        wenshudanganSelectOne(e.target.value);
                });
            }

        }

        function initializationyonghuSelect() {
            var yonghuSelect = document.getElementById('yonghuSelect');
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                        yonghuSelect.add(new Option(yonghuOptions[i].yonghuName, yonghuOptions[i].id));
                }

                $("#yonghuSelect").change(function(e) {
                        yonghuSelectOne(e.target.value);
                });
            }

        }

        function initializationzhuguanSelect() {
            var zhuguanSelect = document.getElementById('zhuguanSelect');
            if(zhuguanSelect != null && zhuguanOptions != null  && zhuguanOptions.length > 0 ) {
                for (var i = 0; i < zhuguanOptions.length; i++) {
                        zhuguanSelect.add(new Option(zhuguanOptions[i].zhuguanName, zhuguanOptions[i].id));
                }

                $("#zhuguanSelect").change(function(e) {
                        zhuguanSelectOne(e.target.value);
                });
            }

        }

        function initializationzhurenSelect() {
            var zhurenSelect = document.getElementById('zhurenSelect');
            if(zhurenSelect != null && zhurenOptions != null  && zhurenOptions.length > 0 ) {
                for (var i = 0; i < zhurenOptions.length; i++) {
                        zhurenSelect.add(new Option(zhurenOptions[i].zhurenName, zhurenOptions[i].id));
                }

                $("#zhurenSelect").change(function(e) {
                        zhurenSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {



        <!-- 当前表的下拉框回显 -->

        var bumenTypesSelect = document.getElementById("bumenTypesSelect");
        if(bumenTypesSelect != null && bumenTypesOptions != null  && bumenTypesOptions.length > 0 ) {
            for (var i = 0; i < bumenTypesOptions.length; i++) {
                if (bumenTypesOptions[i].codeIndex == ruleForm.bumenTypes) {//下拉框value对比,如果一致就赋值汉字
                        bumenTypesSelect.options[i].selected = true;
                }
            }
        }

        var jieyuebuTypesSelect = document.getElementById("jieyuebuTypesSelect");
        if(jieyuebuTypesSelect != null && jieyuebuTypesOptions != null  && jieyuebuTypesOptions.length > 0 ) {
            for (var i = 0; i < jieyuebuTypesOptions.length; i++) {
                if (jieyuebuTypesOptions[i].codeIndex == ruleForm.jieyuebuTypes) {//下拉框value对比,如果一致就赋值汉字
                        jieyuebuTypesSelect.options[i].selected = true;
                }
            }
        }

        var zhuguanTypesSelect = document.getElementById("zhuguanTypesSelect");
        if(zhuguanTypesSelect != null && zhuguanTypesOptions != null  && zhuguanTypesOptions.length > 0 ) {
            for (var i = 0; i < zhuguanTypesOptions.length; i++) {
                if (zhuguanTypesOptions[i].codeIndex == ruleForm.zhuguanTypes) {//下拉框value对比,如果一致就赋值汉字
                        zhuguanTypesSelect.options[i].selected = true;
                }
            }
        }

        var zhurenTypesSelect = document.getElementById("zhurenTypesSelect");
        if(zhurenTypesSelect != null && zhurenTypesOptions != null  && zhurenTypesOptions.length > 0 ) {
            for (var i = 0; i < zhurenTypesOptions.length; i++) {
                if (zhurenTypesOptions[i].codeIndex == ruleForm.zhurenTypes) {//下拉框value对比,如果一致就赋值汉字
                        zhurenTypesSelect.options[i].selected = true;
                }
            }
        }

        var wenshudanganTypesSelect = document.getElementById("wenshudanganTypesSelect");
        if(wenshudanganTypesSelect != null && wenshudanganTypesOptions != null  && wenshudanganTypesOptions.length > 0 ) {
            for (var i = 0; i < wenshudanganTypesOptions.length; i++) {
                if (wenshudanganTypesOptions[i].codeIndex == ruleForm.wenshudanganTypes) {//下拉框value对比,如果一致就赋值汉字
                        wenshudanganTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var danganSelect = document.getElementById("danganSelect");
            if(danganSelect != null && danganOptions != null  && danganOptions.length > 0 ) {
                for (var i = 0; i < danganOptions.length; i++) {
                    if (danganOptions[i].id == ruleForm.danganId) {//下拉框value对比,如果一致就赋值汉字
                        danganSelect.options[i+1].selected = true;
                        $("#danganSelect" ).selectpicker('refresh');
                    }
                }
            }
            var jieyuebuSelect = document.getElementById("jieyuebuSelect");
            if(jieyuebuSelect != null && jieyuebuOptions != null  && jieyuebuOptions.length > 0 ) {
                for (var i = 0; i < jieyuebuOptions.length; i++) {
                    if (jieyuebuOptions[i].id == ruleForm.jieyuebuId) {//下拉框value对比,如果一致就赋值汉字
                        jieyuebuSelect.options[i+1].selected = true;
                        $("#jieyuebuSelect" ).selectpicker('refresh');
                    }
                }
            }
            var wenshudanganSelect = document.getElementById("wenshudanganSelect");
            if(wenshudanganSelect != null && wenshudanganOptions != null  && wenshudanganOptions.length > 0 ) {
                for (var i = 0; i < wenshudanganOptions.length; i++) {
                    if (wenshudanganOptions[i].id == ruleForm.wenshudanganId) {//下拉框value对比,如果一致就赋值汉字
                        wenshudanganSelect.options[i+1].selected = true;
                        $("#wenshudanganSelect" ).selectpicker('refresh');
                    }
                }
            }
            var yonghuSelect = document.getElementById("yonghuSelect");
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                    if (yonghuOptions[i].id == ruleForm.yonghuId) {//下拉框value对比,如果一致就赋值汉字
                        yonghuSelect.options[i+1].selected = true;
                        $("#yonghuSelect" ).selectpicker('refresh');
                    }
                }
            }
            var zhuguanSelect = document.getElementById("zhuguanSelect");
            if(zhuguanSelect != null && zhuguanOptions != null  && zhuguanOptions.length > 0 ) {
                for (var i = 0; i < zhuguanOptions.length; i++) {
                    if (zhuguanOptions[i].id == ruleForm.zhuguanId) {//下拉框value对比,如果一致就赋值汉字
                        zhuguanSelect.options[i+1].selected = true;
                        $("#zhuguanSelect" ).selectpicker('refresh');
                    }
                }
            }
            var zhurenSelect = document.getElementById("zhurenSelect");
            if(zhurenSelect != null && zhurenOptions != null  && zhurenOptions.length > 0 ) {
                for (var i = 0; i < zhurenOptions.length; i++) {
                    if (zhurenOptions[i].id == ruleForm.zhurenId) {//下拉框value对比,如果一致就赋值汉字
                        zhurenSelect.options[i+1].selected = true;
                        $("#zhurenSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        // debugger

        <!-- 当前表的填充富文本框 -->
        if (ruleForm.jieyuebuContent != null && ruleForm.jieyuebuContent != 'null' && ruleForm.jieyuebuContent != '' && $("#jieyuebuContentupload").length>0) {

            var jieyuebuContentUe1 = UE.getEditor('jieyuebuContentEditor');
            jieyuebuContentUe1.ready(function () {
                // debugger
                var mes = '';
                // debugger
                if(ruleForm.jieyuebuContent != null){
                    mes = ''+ ruleForm.jieyuebuContent;
                    mes = mes.replace(/\n/g, "<br>");
                }
                jieyuebuContentUe1.setContent(mes);
            });
        }
        if (ruleForm.zhuguanContent != null && ruleForm.zhuguanContent != 'null' && ruleForm.zhuguanContent != '' && $("#zhuguanContentupload").length>0) {

            var zhuguanContentUeditor = UE.getEditor('zhuguanContentEditor');
            zhuguanContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.zhuguanContent != null){
                    mes = ''+ ruleForm.zhuguanContent;
                    mes = mes.replace(/\n/g, "<br>");
                }
                zhuguanContentUeditor.setContent(mes);
            });
        }
        if (ruleForm.zhurenContent != null && ruleForm.zhurenContent != 'null' && ruleForm.zhurenContent != '' && $("#zhurenContentupload").length>0) {

            var zhurenContentUeditor = UE.getEditor('zhurenContentEditor');
            zhurenContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.zhurenContent != null){
                    mes = ''+ ruleForm.zhurenContent;
                    mes = mes.replace(/\n/g, "<br>");
                }
                zhurenContentUeditor.setContent(mes);
            });
        }
        if (ruleForm.wenshudanganContent != null && ruleForm.wenshudanganContent != 'null' && ruleForm.wenshudanganContent != '' && $("#wenshudanganContentupload").length>0) {

            var wenshudanganContentUeditor = UE.getEditor('wenshudanganContentEditor');
            wenshudanganContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.wenshudanganContent != null){
                    mes = ''+ ruleForm.wenshudanganContent;
                    mes = mes.replace(/\n/g, "<br>");
                }
                wenshudanganContentUeditor.setContent(mes);
            });
        }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        if($("#jieyuebuContentupload").length>0) {
            var jieyuebuContentEditor = UE.getEditor('jieyuebuContentEditor');
            if (jieyuebuContentEditor.hasContents()) {
                $('#jieyuebuContent-input').attr('value', jieyuebuContentEditor.getPlainTxt());
            }
        }
        if($("#zhuguanContentupload").length>0) {
            var zhuguanContentEditor = UE.getEditor('zhuguanContentEditor');
            if (zhuguanContentEditor.hasContents()) {
                $('#zhuguanContent-input').attr('value', zhuguanContentEditor.getPlainTxt());
            }
        }
        if($("#zhurenContentupload").length>0) {
            var zhurenContentEditor = UE.getEditor('zhurenContentEditor');
            if (zhurenContentEditor.hasContents()) {
                $('#zhurenContent-input').attr('value', zhurenContentEditor.getPlainTxt());
            }
        }
        if($("#wenshudanganContentupload").length>0) {
            var wenshudanganContentEditor = UE.getEditor('wenshudanganContentEditor');
            if (wenshudanganContentEditor.hasContents()) {
                $('#wenshudanganContent-input').attr('value', wenshudanganContentEditor.getPlainTxt());
            }
        }
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addjieyueshenqing');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                yonghuId: "required",
                danganId: "required",
                // insertTime: "required",
                yongtu: "required",
                bumenTypes: "required",
                jieyueTime: "required",
                guihuanTime: "required",
                gongdiangongsi: "required",
                jieyuebuId: "required",
                jieyuebuTypes: "required",
                jieyuebuContent: "required",
                // jieyuebuTime: "required",
                zhuguanId: "required",
                zhuguanTypes: "required",
                zhuguanContent: "required",
                // zhuguanTime: "required",
                zhurenId: "required",
                zhurenTypes: "required",
                zhurenContent: "required",
                // zhurenTime: "required",
                wenshudanganId: "required",
                wenshudanganTypes: "required",
                wenshudanganContent: "required",
                // wenshudanganTime: "required",
                // jingbanren: "required",
                // jingbanrenTime: "required",
            },
            messages: {
                yonghuId: "申请人不能为空",
                danganId: "档案不能为空",
                // insertTime: "申请时间不能为空",
                yongtu: "借阅用途不能为空",
                bumenTypes: "借阅部门不能为空",
                jieyueTime: "借阅时间不能为空",
                guihuanTime: "归还时间不能为空",
                gongdiangongsi: "供电公司不能为空",
                jieyuebuId: "借阅部领导不能为空",
                jieyuebuTypes: "借阅部领导审批类型不能为空",
                jieyuebuContent: "借阅部领导审批意见不能为空",
                // jieyuebuTime: "借阅部领导审批时间不能为空",
                zhuguanId: "主管领导不能为空",
                zhuguanTypes: "主管领导审批类型不能为空",
                zhuguanContent: "主管领导审批意见不能为空",
                // zhuguanTime: "主管领导审批时间不能为空",
                zhurenId: "综合部主任不能为空",
                zhurenTypes: "综合部主任审批类型不能为空",
                zhurenContent: "综合部主任审批意见不能为空",
                // zhurenTime: "综合部主任审批时间不能为空",
                wenshudanganId: "专责人员不能为空",
                wenshudanganTypes: "专责人员审批类型不能为空",
                wenshudanganContent: "专责人员审批意见不能为空",
                // wenshudanganTime: "专责人员审批时间不能为空",
                // jingbanren: "经办人不能为空",
                // jingbanrenTime: "经办时间不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addjieyueshenqing = window.sessionStorage.getItem("addjieyueshenqing");
        if (addjieyueshenqing != null && addjieyueshenqing != "" && addjieyueshenqing != "null") {
            //注册表单验证
            $(validform());
            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            http("jieyueshenqing/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {

                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());



                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
            laydate.render({
                elem: '#insertTime-input'
                ,type: 'datetime'
            });

            var render = laydate.render({
                elem: '#jieyueTime-input'
                ,type: 'datetime'
            });
        // render.destory();
            laydate.render({
                elem: '#guihuanTime-input'
                ,type: 'datetime'
            });
            laydate.render({
                elem: '#jieyuebuTime-input'
                ,type: 'datetime'
            });
            laydate.render({
                elem: '#zhuguanTime-input'
                ,type: 'datetime'
            });
            laydate.render({
                elem: '#zhurenTime-input'
                ,type: 'datetime'
            });
            laydate.render({
                elem: '#wenshudanganTime-input'
                ,type: 'datetime'
            });
            laydate.render({
                elem: '#jingbanrenTime-input'
                ,type: 'datetime'
            });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        danganDataBind();
        jieyuebuDataBind();
        wenshudanganDataBind();
        yonghuDataBind();
        zhuguanDataBind();
        zhurenDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#yonghuId").val(ruleForm.yonghuId);
        $("#danganId").val(ruleForm.danganId);
        $("#insertTime-input").val(ruleForm.insertTime);
        $("#yongtu").val(ruleForm.yongtu);
        $("#jieyueTime-input").val(ruleForm.jieyueTime);
        $("#guihuanTime-input").val(ruleForm.guihuanTime);
        $("#gongdiangongsi").val(ruleForm.gongdiangongsi);
        $("#jieyuebuId").val(ruleForm.jieyuebuId);
        $("#jieyuebuContent").val(ruleForm.jieyuebuContent);
        $("#jieyuebuTime-input").val(ruleForm.jieyuebuTime);
        $("#zhuguanId").val(ruleForm.zhuguanId);
        $("#zhuguanContent").val(ruleForm.zhuguanContent);
        $("#zhuguanTime-input").val(ruleForm.zhuguanTime);
        $("#zhurenId").val(ruleForm.zhurenId);
        $("#zhurenContent").val(ruleForm.zhurenContent);
        $("#zhurenTime-input").val(ruleForm.zhurenTime);
        $("#wenshudanganId").val(ruleForm.wenshudanganId);
        $("#wenshudanganContent").val(ruleForm.wenshudanganContent);
        $("#wenshudanganTime-input").val(ruleForm.wenshudanganTime);
        $("#jingbanren").val(ruleForm.jingbanren);
        $("#jingbanrenTime-input").val(ruleForm.jingbanrenTime);

    }
    <!--  级联表的数据回显  -->
    function danganDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#danganId").val(ruleForm.id);

        $("#danganBianhao").val(ruleForm.danganBianhao);
        $("#danganName").val(ruleForm.danganName);
        $("#danganValue").val(ruleForm.danganValue);
        $("#danganContent").val(ruleForm.danganContent);
        $("#insertTime").val(ruleForm.insertTime);
    }

    function jieyuebuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#jieyuebuId").val(ruleForm.id);

        $("#jieyuebuName").val(ruleForm.jieyuebuName);
        $("#jieyuebuPhone").val(ruleForm.jieyuebuPhone);
        $("#jieyuebuIdNumber").val(ruleForm.jieyuebuIdNumber);
    }

    function wenshudanganDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#wenshudanganId").val(ruleForm.id);

        $("#wenshudanganName").val(ruleForm.wenshudanganName);
        $("#wenshudanganPhone").val(ruleForm.wenshudanganPhone);
        $("#wenshudanganIdNumber").val(ruleForm.wenshudanganIdNumber);
    }

    function yonghuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#yonghuId").val(ruleForm.id);

        $("#yonghuName").val(ruleForm.yonghuName);
        $("#yonghuPhone").val(ruleForm.yonghuPhone);
        $("#yonghuIdNumber").val(ruleForm.yonghuIdNumber);
        $("#yonghuDanwei").val(ruleForm.yonghuDanwei);
    }

    function zhuguanDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#zhuguanId").val(ruleForm.id);

        $("#zhuguanName").val(ruleForm.zhuguanName);
        $("#zhuguanPhone").val(ruleForm.zhuguanPhone);
        $("#zhuguanIdNumber").val(ruleForm.zhuguanIdNumber);
    }

    function zhurenDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#zhurenId").val(ruleForm.id);

        $("#zhurenName").val(ruleForm.zhurenName);
        $("#zhurenPhone").val(ruleForm.zhurenPhone);
        $("#zhurenIdNumber").val(ruleForm.zhurenIdNumber);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        danganShowImg();
        jieyuebuShowImg();
        wenshudanganShowImg();
        yonghuShowImg();
        zhuguanShowImg();
        zhurenShowImg();
    }


    <!--  级联表的图片  -->

    function danganShowImg() {
        $("#danganPhotoImg").attr("src",ruleForm.danganPhoto);
    }


    function jieyuebuShowImg() {
        $("#jieyuebuPhotoImg").attr("src",ruleForm.jieyuebuPhoto);
    }


    function wenshudanganShowImg() {
        $("#wenshudanganPhotoImg").attr("src",ruleForm.wenshudanganPhoto);
    }


    function yonghuShowImg() {
        $("#yonghuPhotoImg").attr("src",ruleForm.yonghuPhoto);
    }


    function zhuguanShowImg() {
        $("#zhuguanPhotoImg").attr("src",ruleForm.zhuguanPhoto);
    }


    function zhurenShowImg() {
        $("#zhurenPhotoImg").attr("src",ruleForm.zhurenPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        danganShowVideo();
        jieyuebuShowVideo();
        wenshudanganShowVideo();
        yonghuShowVideo();
        zhuguanShowVideo();
        zhurenShowVideo();
    }


    <!--  级联表的视频  -->

    function danganShowVideo() {
        $("#danganPhotoV").attr("src",ruleForm.danganPhoto);
    }

    function jieyuebuShowVideo() {
        $("#jieyuebuPhotoV").attr("src",ruleForm.jieyuebuPhoto);
    }

    function wenshudanganShowVideo() {
        $("#wenshudanganPhotoV").attr("src",ruleForm.wenshudanganPhoto);
    }

    function yonghuShowVideo() {
        $("#yonghuPhotoV").attr("src",ruleForm.yonghuPhoto);
    }

    function zhuguanShowVideo() {
        $("#zhuguanPhotoV").attr("src",ruleForm.zhuguanPhoto);
    }

    function zhurenShowVideo() {
        $("#zhurenPhotoV").attr("src",ruleForm.zhurenPhoto);
    }



    $(document).ready(function () {
        debugger
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            bumenTypesSelect();
            jieyuebuTypesSelect();
            zhuguanTypesSelect();
            zhurenTypesSelect();
            wenshudanganTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            danganSelect();
            jieyuebuSelect();
            wenshudanganSelect();
            yonghuSelect();
            zhuguanSelect();
            zhurenSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationBumentypesSelect();
            initializationJieyuebutypesSelect();
            initializationZhuguantypesSelect();
            initializationZhurentypesSelect();
            initializationWenshudangantypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationdanganSelect();
            initializationjieyuebuSelect();
            initializationwenshudanganSelect();
            initializationyonghuSelect();
            initializationzhuguanSelect();
            initializationzhurenSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('addjieyueshenqing');
        window.sessionStorage.removeItem('updateId');
        $(".selectpicker" ).selectpicker('refresh');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events: none;');
        }else{
            $(".aaaaaa").remove(); // 删除除了档案下拉框的所有下拉框
            $('.pppppp').remove(); // 不是管理员 删除经办人和经办时间
            if (window.sessionStorage.getItem('role') == '用户'){
                $(".aaaaaaa").remove(); // 删除用户信息
                $('.bbbbbb').remove(); //借阅部领导信息删除
                $('.bbbbbbb').remove(); //借阅部领导信息删除
                $('.cccccc').remove(); //主管领导信息删除
                $('.ccccccc').remove(); //主管领导信息删除
                $('.dddddd').remove(); //综合部主任信息删除
                $('.ddddddd').remove(); //综合部主任信息删除
                $('.eeeeee').remove(); //专责人员信息删除
                $('.eeeeeee').remove(); //专责人员信息删除

                // // 用户新增申请查询当前用户信息  回显数据
                // if(window.sessionStorage.getItem('addjieyueshenqing') != null && window.sessionStorage.getItem('addjieyueshenqing') !=""){
                //     // 查询当前登录账户的信息
                //     var userId = window.sessionStorage.getItem('userId');
                //     yonghuSelectOne(userId);
                // }

            }else if (window.sessionStorage.getItem('role') == '借阅部领导'){
                $('.ffffff').attr('readonly', 'readonly'); //用户申请信息不能修改
                $('#bumenTypesSelect').attr('style', 'pointer-events: none;');// 设置部门不可以修改
                $('#bumenTypesSelect').attr('readonly', 'readonly');// 部门置灰 和用户信息颜色一致

                // if(window.sessionStorage.getItem('updateId') != null && window.sessionStorage.getItem('updateId') !=""){//设置借阅部领导信息
                //     // 查询当前登录账户的信息
                //     var userId = window.sessionStorage.getItem('userId');
                //     jieyuebuSelectOne(userId);
                // }

                $("#jieyueTime-input").removeAttr("lay-key");
                $("#jieyueTime-input").removeAttr("aria-invalid");
                $("#jieyueTime-input").removeClass("valid");
                $("#jieyueTime-input").attr("readonly","readonly111");	//设置借阅时间不可选
                $("#guihuanTime-input").removeAttr("lay-key");
                $("#guihuanTime-input").removeAttr("aria-invalid");
                $("#guihuanTime-input").removeClass("valid");
                $("#guihuanTime-input").attr("readonly","readonly111");	//设置归还时间不可选


                $('.bbbbbbb').remove(); //删除借阅部领导审核时间 和借阅部领导信息
                $('.cccccc').remove(); //主管领导信息删除
                $('.ccccccc').remove(); //主管领导信息删除
                $('.dddddd').remove(); //综合部主任信息删除
                $('.ddddddd').remove(); //综合部主任信息删除
                $('.eeeeee').remove(); //专责人员信息删除
                $('.eeeeeee').remove(); //专责人员信息删除
                $(".gggggg").remove(); // 删除档案下拉框

            }else if (window.sessionStorage.getItem('role') == '主管领导'){
                $('.ffffff').attr('readonly', 'readonly'); //用户申请信息不能修改
                $('#bumenTypesSelect').attr('style', 'pointer-events: none;');// 设置部门不可以修改
                $('#bumenTypesSelect').attr('readonly', 'readonly');// 部门置灰 和用户信息颜色一致

                $('.bbbbbb').attr('readonly', 'readonly'); //借阅部领导信息不能修改
                $('#jieyuebuTypesSelect').attr('style', 'pointer-events: none;');//  设置借阅部领导审批类型不可以修改
                $('#jieyuebuTypesSelect').attr('readonly', 'readonly');			// 		 借阅部领导审批类型置灰 和不可修改的颜色一致
                var jieyuebuContentUeditor = UE.getEditor('jieyuebuContentEditor');//获取借阅部领导审批意见对象
                jieyuebuContentUeditor.ready(function () {						   //设置借阅部领导审批意见不可修改
                    jieyuebuContentUeditor.setDisabled('fullscreen');
                });

                // if(window.sessionStorage.getItem('updateId') != null && window.sessionStorage.getItem('updateId') !=""){//查询并设置主管领导信息
                //     // 查询当前登录账户的信息
                //     var userId = window.sessionStorage.getItem('userId');
                //     zhuguanSelectOne(userId);
                // }

                $("#jieyueTime-input").removeAttr("lay-key");
                $("#jieyueTime-input").removeAttr("aria-invalid");
                $("#jieyueTime-input").removeClass("valid");
                $("#jieyueTime-input").attr("readonly","readonly111");	//设置借阅时间不可选
                $("#guihuanTime-input").removeAttr("lay-key");
                $("#guihuanTime-input").removeAttr("aria-invalid");
                $("#guihuanTime-input").removeClass("valid");
                $("#guihuanTime-input").attr("readonly","readonly111");	//设置归还时间不可选
                $("#jieyuebuTime-input").removeAttr("lay-key");
                $("#jieyuebuTime-input").removeAttr("aria-invalid");
                $("#jieyuebuTime-input").removeClass("valid");
                $("#jieyuebuTime-input").attr("readonly","readonly111");	//设置借阅部领导审批时间不可选

                $('.ccccccc').remove(); //删除主管领导审核时间 和主管领导信息
                $('.dddddd').remove(); //综合部主任信息删除
                $('.ddddddd').remove(); //综合部主任信息删除
                $('.eeeeee').remove(); //专责人员信息删除
                $('.eeeeeee').remove(); //专责人员信息删除
                $(".gggggg").remove(); // 删除档案下拉框

            }else if (window.sessionStorage.getItem('role') == '综合部主任'){
                $('.ffffff').attr('readonly', 'readonly'); //用户申请信息不能修改
                $('#bumenTypesSelect').attr('style', 'pointer-events: none;');// 设置部门不可以修改
                $('#bumenTypesSelect').attr('readonly', 'readonly');// 部门置灰 和用户信息颜色一致

                $('.bbbbbb').attr('readonly', 'readonly'); //借阅部领导信息不能修改
                $('#jieyuebuTypesSelect').attr('style', 'pointer-events: none;');//  设置借阅部领导审批类型不可以修改
                $('#jieyuebuTypesSelect').attr('readonly', 'readonly');			// 		 借阅部领导审批类型置灰 和不可修改的颜色一致
                var jieyuebuContentUeditor = UE.getEditor('jieyuebuContentEditor');//获取借阅部领导审批意见对象
                jieyuebuContentUeditor.ready(function () {						   //设置借阅部领导审批意见不可修改
                    jieyuebuContentUeditor.setDisabled('fullscreen');
                });

                $('.cccccc').attr('readonly', 'readonly'); //主管领导信息不能修改
                $('#zhuguanTypesSelect').attr('style', 'pointer-events: none;');//  设置主管领导审批类型不可以修改
                $('#zhuguanTypesSelect').attr('readonly', 'readonly');			// 		 主管领导审批类型置灰 和不可修改的颜色一致
                var zhuguanContentEditor = UE.getEditor('zhuguanContentEditor');//获取主管领导审批意见对象
                zhuguanContentEditor.ready(function () {						   //设置主管领导审批意见不可修改
                    zhuguanContentEditor.setDisabled('fullscreen');
                });

                // if(window.sessionStorage.getItem('updateId') != null && window.sessionStorage.getItem('updateId') !=""){//查询并设置综合部主任信息
                //     // 查询当前登录账户的信息
                //     var userId = window.sessionStorage.getItem('userId');
                //     zhurenSelectOne(userId);
                // }

                $("#jieyueTime-input").removeAttr("lay-key");
                $("#jieyueTime-input").removeAttr("aria-invalid");
                $("#jieyueTime-input").removeClass("valid");
                $("#jieyueTime-input").attr("readonly","readonly111");	//设置借阅时间不可选
                $("#guihuanTime-input").removeAttr("lay-key");
                $("#guihuanTime-input").removeAttr("aria-invalid");
                $("#guihuanTime-input").removeClass("valid");
                $("#guihuanTime-input").attr("readonly","readonly111");	//设置归还时间不可选
                $("#jieyuebuTime-input").removeAttr("lay-key");
                $("#jieyuebuTime-input").removeAttr("aria-invalid");
                $("#jieyuebuTime-input").removeClass("valid");
                $("#jieyuebuTime-input").attr("readonly","readonly111");	//设置借阅部领导审批时间不可选
                $("#zhuguanTime-input").removeAttr("lay-key");
                $("#zhuguanTime-input").removeAttr("aria-invalid");
                $("#zhuguanTime-input").removeClass("valid");
                $("#zhuguanTime-input").attr("readonly","readonly111");	//设置主管领导审批时间不可选

                $('.ddddddd').remove(); //删除综合部主任信息审核时间
                $('.eeeeee').remove(); //专责人员信息删除
                $('.eeeeeee').remove(); //专责人员信息删除
                $(".gggggg").remove(); // 删除档案下拉框

            }else if (window.sessionStorage.getItem('role') == '文书档案专责人员'){
                debugger
                $('.ffffff').attr('readonly', 'readonly'); //用户申请信息不能修改
                $('#bumenTypesSelect').attr('style', 'pointer-events: none;');// 设置部门不可以修改
                $('#bumenTypesSelect').attr('readonly', 'readonly');// 部门置灰 和用户信息颜色一致

                $('.bbbbbb').attr('readonly', 'readonly'); //借阅部领导信息不能修改
                $('#jieyuebuTypesSelect').attr('style', 'pointer-events: none;');//  设置借阅部领导审批类型不可以修改
                $('#jieyuebuTypesSelect').attr('readonly', 'readonly');			// 		 借阅部领导审批类型置灰 和不可修改的颜色一致
                var jieyuebuContentUeditor = UE.getEditor('jieyuebuContentEditor');//获取借阅部领导审批意见对象
                jieyuebuContentUeditor.ready(function () {						   //设置借阅部领导审批意见不可修改
                    jieyuebuContentUeditor.setDisabled('fullscreen');
                });

                $('.cccccc').attr('readonly', 'readonly'); //主管领导信息不能修改
                $('#zhuguanTypesSelect').attr('style', 'pointer-events: none;');//  设置主管领导审批类型不可以修改
                $('#zhuguanTypesSelect').attr('readonly', 'readonly');			// 		 主管领导审批类型置灰 和不可修改的颜色一致
                var zhuguanContentEditor = UE.getEditor('zhuguanContentEditor');//获取主管领导审批意见对象
                zhuguanContentEditor.ready(function () {						   //设置主管领导审批意见不可修改
                    zhuguanContentEditor.setDisabled('fullscreen');
                });

                $('.dddddd').attr('readonly', 'readonly'); //综合部主任信息不能修改
                $('#zhurenTypesSelect').attr('style', 'pointer-events: none;');//   设置综合部主任审批类型不可以修改
                $('#zhurenTypesSelect').attr('readonly', 'readonly');			// 		 综合部主任审批类型置灰 和不可修改的颜色一致
                var zhurenContentEditor = UE.getEditor('zhurenContentEditor');   //获取综合部主任审批意见对象
                zhurenContentEditor.ready(function () {						   //设置综合部主任审批意见不可修改
                    zhurenContentEditor.setDisabled('fullscreen');
                });

                $("#jieyueTime-input").removeAttr("lay-key");
                $("#jieyueTime-input").removeAttr("aria-invalid");
                $("#jieyueTime-input").removeClass("valid");
                $("#jieyueTime-input").attr("readonly","readonly111");	//设置借阅时间不可选
                $("#guihuanTime-input").removeAttr("lay-key");
                $("#guihuanTime-input").removeAttr("aria-invalid");
                $("#guihuanTime-input").removeClass("valid");
                $("#guihuanTime-input").attr("readonly","readonly111");	//设置归还时间不可选
                $("#jieyuebuTime-input").removeAttr("lay-key");
                $("#jieyuebuTime-input").removeAttr("aria-invalid");
                $("#jieyuebuTime-input").removeClass("valid");
                $("#jieyuebuTime-input").attr("readonly","readonly111");	//设置借阅部领导审批时间不可选
                $("#zhuguanTime-input").removeAttr("lay-key");
                $("#zhuguanTime-input").removeAttr("aria-invalid");
                $("#zhuguanTime-input").removeClass("valid");
                $("#zhuguanTime-input").attr("readonly","readonly111");	//设置主管领导审批时间不可选
                $("#zhurenTime-input").removeAttr("lay-key");
                $("#zhurenTime-input").removeAttr("aria-invalid");
                $("#zhurenTime-input").removeClass("valid");
                $("#zhurenTime-input").attr("readonly","readonly111");	//设置综合部主任审批时间不可选

                $('.eeeeeee').remove(); //删除专责人员审核时间 和专责人员信息
                $(".gggggg").remove(); // 删除档案下拉框

            }
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>