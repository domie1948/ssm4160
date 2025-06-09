<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
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
                    <ul class="navbar-nav mr-auto" id="navUl">

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
                        <li class="breadcrumb-item active">借阅申请登记</li>
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
                            <!-- 级联表所有字段 -->
                                <%-- 申请人信息--%>
                                <div class="form-group col-md-6">
                                    <label>用户姓名</label>
                                    <input id="yonghuName" name="yonghuName" class="form-control"
                                           v-model="ruleForm.yonghuName" readonly>
                                </div>


                                <div class="form-group col-md-6">
                                    <label>用户手机号</label>
                                    <input id="yonghuPhone" name="yonghuPhone" class="form-control"
                                           v-model="ruleForm.yonghuPhone" readonly>
                                </div>


                                <div class="form-group col-md-6">
                                    <label>用户身份证号</label>
                                    <input id="yonghuIdNumber" name="yonghuIdNumber" class="form-control"
                                           v-model="ruleForm.yonghuIdNumber" readonly>
                                </div>


                                <div class="form-group col-md-6">
                                    <label>单位</label>
                                    <input id="yonghuDanwei" name="yonghuDanwei" class="form-control"
                                           v-model="ruleForm.yonghuDanwei" readonly>
                                </div>


                                <div class="form-group col-md-6">
                                    <label>用户照片</label>
                                    <img id="yonghuPhotoImg" width="100" height="100">
                                </div>

                                <%-- 申请信息 --%>
                                <div class="form-group col-md-6">
                                    <label>申请时间</label>
                                    <input id="insertTime" name="insertTime" class="form-control"
                                           v-model="ruleForm.insertTime" readonly>
                                </div>


                                <div class="form-group col-md-6">
                                    <label>借阅用途</label>
                                    <input id="yongtu" name="yongtu" class="form-control"
                                           v-model="ruleForm.yongtu" readonly>
                                </div>


                                <div class="form-group col-md-6">
                                    <label>借阅部门</label>
                                    <input id="bumenValue" name="bumenValue" class="form-control"
                                           v-model="ruleForm.bumenValue" readonly>
                                </div>


                                <div class="form-group col-md-6">
                                    <label>借阅时间</label>
                                    <input id="jieyueTime" name="jieyueTime" class="form-control"
                                           v-model="ruleForm.jieyueTime" readonly>
                                </div>


                                <div class="form-group col-md-6">
                                    <label>归还时间</label>
                                    <input id="guihuanTime" name="guihuanTime" class="form-control"
                                           v-model="ruleForm.guihuanTime" readonly>
                                </div>


                                <div class="form-group col-md-6">
                                    <label>供电公司</label>
                                    <input id="gongdiangongsi" name="gongdiangongsi" class="form-control"
                                           v-model="ruleForm.gongdiangongsi" readonly>
                                </div>


                                <%-- 被申请档案信息 --%>
                                        <div class="form-group col-md-6">
                                            <label>档案编号</label>
                                            <input id="danganBianhao" name="danganBianhao" class="form-control"
                                                   v-model="ruleForm.danganBianhao" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>档案名称</label>
                                            <input id="danganName" name="danganName" class="form-control"
                                                   v-model="ruleForm.danganName" readonly>
                                        </div>


                                    <div class="form-group col-md-6">
                                        <label>档案类型</label>
                                        <input id="danganValue" name="danganValue" class="form-control"
                                               v-model="ruleForm.danganValue" readonly>
                                    </div>


                                    <div class="form-group col-md-6">
                                        <label>档案图片</label>
                                        <img id="danganPhotoImg" width="100" height="100">
                                    </div>

                                    <div>
                                        <label>档案详情</label>
                                        <script id="danganContentEditor" type="text/plain"
                                                style="width:800px;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var danganContentUe = UE.getEditor('danganContentEditor', {
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
                                        <input type="hidden" name="danganContent" id="danganContent-input">
                                    </div>

                                    <%-- 借阅部领导信息 --%>
                                        <div class="form-group col-md-6">
                                            <label>借阅部领导姓名</label>
                                            <input id="jieyuebuName" name="jieyuebuName" class="form-control"
                                                   v-model="ruleForm.jieyuebuName" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>借阅部领导手机号</label>
                                            <input id="jieyuebuPhone" name="jieyuebuPhone" class="form-control"
                                                   v-model="ruleForm.jieyuebuPhone" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>借阅部领导身份证号</label>
                                            <input id="jieyuebuIdNumber" name="jieyuebuIdNumber" class="form-control"
                                                   v-model="ruleForm.jieyuebuIdNumber" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>借阅部领导照片</label>
                                            <img id="jieyuebuPhotoImg" width="100" height="100">
                                        </div>
                                <div class="form-group col-md-6">
                                    <label>借阅部领导审批类型</label>
                                    <input id="jieyuebuValue" name="jieyuebuValue" class="form-control"
                                           v-model="ruleForm.jieyuebuValue" readonly>
                                </div>


                                <div>
                                    <label>借阅部领导审批意见</label>
                                    <script id="jieyuebuContentEditor" type="text/plain"
                                            style="width:800px;height:230px;"></script>
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


                                <div class="form-group col-md-6">
                                    <label>借阅部领导审批时间</label>
                                    <input id="jieyuebuTime" name="jieyuebuTime" class="form-control"
                                           v-model="ruleForm.jieyuebuTime" readonly>
                                </div>


                                        <%-- 主管领导信息 --%>
                                        <div class="form-group col-md-6">
                                            <label>主管领导姓名</label>
                                            <input id="zhuguanName" name="zhuguanName" class="form-control"
                                                   v-model="ruleForm.zhuguanName" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>主管领导手机号</label>
                                            <input id="zhuguanPhone" name="zhuguanPhone" class="form-control"
                                                   v-model="ruleForm.zhuguanPhone" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>主管领导身份证号</label>
                                            <input id="zhuguanIdNumber" name="zhuguanIdNumber" class="form-control"
                                                   v-model="ruleForm.zhuguanIdNumber" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>主管领导照片</label>
                                            <img id="zhuguanPhotoImg" width="100" height="100">
                                        </div>

                                <div class="form-group col-md-6">
                                    <label>主管领导审批类型</label>
                                    <input id="zhuguanValue" name="zhuguanValue" class="form-control"
                                           v-model="ruleForm.zhuguanValue" readonly>
                                </div>


                                <div>
                                    <label>主管领导审批意见</label>
                                    <script id="zhuguanContentEditor" type="text/plain"
                                            style="width:800px;height:230px;"></script>
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


                                <div class="form-group col-md-6">
                                    <label>主管领导审批时间</label>
                                    <input id="zhuguanTime" name="zhuguanTime" class="form-control"
                                           v-model="ruleForm.zhuguanTime" readonly>
                                </div>

                                        <%-- 综合部主任信息 --%>
                                        <div class="form-group col-md-6">
                                            <label>综合部主任姓名</label>
                                            <input id="zhurenName" name="zhurenName" class="form-control"
                                                   v-model="ruleForm.zhurenName" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>综合部主任手机号</label>
                                            <input id="zhurenPhone" name="zhurenPhone" class="form-control"
                                                   v-model="ruleForm.zhurenPhone" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>综合部主任身份证号</label>
                                            <input id="zhurenIdNumber" name="zhurenIdNumber" class="form-control"
                                                   v-model="ruleForm.zhurenIdNumber" readonly>
                                        </div>
                                <div class="form-group col-md-6">
                                    <label>综合部主任审批类型</label>
                                    <input id="zhurenValue" name="zhurenValue" class="form-control"
                                           v-model="ruleForm.zhurenValue" readonly>
                                </div>


                                <div>
                                    <label>综合部主任审批意见</label>
                                    <script id="zhurenContentEditor" type="text/plain"
                                            style="width:800px;height:230px;"></script>
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


                                <div class="form-group col-md-6">
                                    <label>综合部主任审批时间</label>
                                    <input id="zhurenTime" name="zhurenTime" class="form-control"
                                           v-model="ruleForm.zhurenTime" readonly>
                                </div>


                                        <div class="form-group col-md-6">
                                            <label>综合部主任照片</label>
                                            <img id="zhurenPhotoImg" width="100" height="100">
                                        </div>

                                        <%-- 专责人员信息 --%>

                                        <div class="form-group col-md-6">
                                            <label>专责人员姓名</label>
                                            <input id="wenshudanganName" name="wenshudanganName" class="form-control"
                                                   v-model="ruleForm.wenshudanganName" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>专责人员手机号</label>
                                            <input id="wenshudanganPhone" name="wenshudanganPhone" class="form-control"
                                                   v-model="ruleForm.wenshudanganPhone" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>专责人员身份证号</label>
                                            <input id="wenshudanganIdNumber" name="wenshudanganIdNumber" class="form-control"
                                                   v-model="ruleForm.wenshudanganIdNumber" readonly>
                                        </div>


                                    <div class="form-group col-md-6">
                                        <label>专责人员照片</label>
                                        <img id="wenshudanganPhotoImg" width="100" height="100">
                                    </div>
                                <div class="form-group col-md-6">
                                    <label>文书档案专责人员审批类型</label>
                                    <input id="wenshudanganValue" name="wenshudanganValue" class="form-control"
                                           v-model="ruleForm.wenshudanganValue" readonly>
                                </div>


                                <div>
                                    <label>专责人员审批意见</label>
                                    <script id="wenshudanganContentEditor" type="text/plain"
                                            style="width:800px;height:230px;"></script>
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


                                <div class="form-group col-md-6">
                                    <label>专责人员审批时间</label>
                                    <input id="wenshudanganTime" name="wenshudanganTime" class="form-control"
                                           v-model="ruleForm.wenshudanganTime" readonly>
                                </div>






                            <!-- 本表所有字段 -->



                                    <input id="updateId" name="id" type="hidden">
                                <input id="yonghuId" name="yonghuId" v-model="ruleForm.yonghuId" readonly type="hidden">
                                <input id="danganId" name="danganId" v-model="ruleForm.danganId" readonly type="hidden">



                                <input id="jieyuebuId" name="jieyuebuId" v-model="ruleForm.jieyuebuId" readonly type="hidden">



                                <input id="zhuguanId" name="zhuguanId" v-model="ruleForm.zhuguanId" readonly type="hidden">



                                <input id="zhurenId" name="zhurenId" v-model="ruleForm.zhurenId" readonly type="hidden">



                                <input id="wenshudanganId" name="wenshudanganId" v-model="ruleForm.wenshudanganId" readonly type="hidden">




                                    <div class="form-group col-md-6">
                                        <label>经办人</label>
                                        <input id="jingbanren" name="jingbanren" class="form-control"
                                               v-model="ruleForm.jingbanren" readonly>
                                    </div>


                                    <div class="form-group col-md-6">
                                        <label>经办时间</label>
                                        <input id="jingbanrenTime" name="jingbanrenTime" class="form-control"
                                               v-model="ruleForm.jingbanrenTime" readonly>
                                    </div>

                                <div class="form-group col-md-12 mb-3">
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
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

<script>
    <%@ include file="../../utils/menu.jsp"%>
            <%@ include file="../../static/setMenu.js"%>
            <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "jieyueshenqing";
    var pageType = "add-or-update";
    var updateId = "";

    var bumenTypesOptions = [];
    var jieyuebuTypesOptions = [];
    var zhuguanTypesOptions = [];
    var zhurenTypesOptions = [];
    var wenshudanganTypesOptions = [];

    var ruleForm = {};
    var vm = new Vue({
        el: '#addOrUpdateForm',
        data: {
            ruleForm: {},
        },
        beforeCreate: function () {
            var id = window.sessionStorage.getItem("updateId");
            if (id != null && id != "" && id != "null") {
                $.ajax({
                    type: "GET",
                    url: baseUrl + "jieyueshenqing/info/" + id,
                    beforeSend: function (xhr) {
                        xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                    },
                    success: function (res) {
                        if (res.code == 0) {
                            vm.ruleForm = res.data;
                            ruleForm = res.data;
                            showImg();
                            setContent();
                        } else if (res.code == 401) {
                        <%@ include file="../../static/toLogin.jsp"%>
                        } else {
                            alert(res.msg)
                        }
                    },
                });
            }
        },
        methods: {}
    });


    // 填充富文本框
    function setContent() {

        if (ruleForm.danganContent != null && ruleForm.danganContent != 'null' && ruleForm.danganContent != '') {
            var danganContentUeditor = UE.getEditor('danganContentEditor');
                danganContentUeditor.ready(function () {
                    var mes = '';
                    if(ruleForm.danganContent != null){
                        mes = ''+ ruleForm.danganContent;
                        mes = mes.replace(/\n/g, "<br>");
                    }
                    danganContentUeditor.setContent(mes);
                    danganContentUeditor.setDisabled('fullscreen');
            });
        }
        if (ruleForm.jieyuebuContent != null && ruleForm.jieyuebuContent != 'null' && ruleForm.jieyuebuContent != '') {
            var jieyuebuContentUeditor = UE.getEditor('jieyuebuContentEditor');
                jieyuebuContentUeditor.ready(function () {
                    var mes = '' + ruleForm.jieyuebuContent;
                    jieyuebuContentUeditor.setContent(mes);
                    jieyuebuContentUeditor.setDisabled('fullscreen');
            });
        }
        if (ruleForm.zhuguanContent != null && ruleForm.zhuguanContent != 'null' && ruleForm.zhuguanContent != '') {
            var zhuguanContentUeditor = UE.getEditor('zhuguanContentEditor');
                zhuguanContentUeditor.ready(function () {
                    var mes = '' + ruleForm.zhuguanContent;
                    zhuguanContentUeditor.setContent(mes);
                    zhuguanContentUeditor.setDisabled('fullscreen');
            });
        }
        if (ruleForm.zhurenContent != null && ruleForm.zhurenContent != 'null' && ruleForm.zhurenContent != '') {
            var zhurenContentUeditor = UE.getEditor('zhurenContentEditor');
                zhurenContentUeditor.ready(function () {
                    var mes = '' + ruleForm.zhurenContent;
                    zhurenContentUeditor.setContent(mes);
                    zhurenContentUeditor.setDisabled('fullscreen');
            });
        }
        if (ruleForm.wenshudanganContent != null && ruleForm.wenshudanganContent != 'null' && ruleForm.wenshudanganContent != '') {
            var wenshudanganContentUeditor = UE.getEditor('wenshudanganContentEditor');
                wenshudanganContentUeditor.ready(function () {
                    var mes = '' + ruleForm.wenshudanganContent;
                    wenshudanganContentUeditor.setContent(mes);
                    wenshudanganContentUeditor.setDisabled('fullscreen');
            });
        }
    }


    //图片显示
    function showImg() {
        $("#danganPhotoImg").attr("src", ruleForm.danganPhoto);
        $("#jieyuebuPhotoImg").attr("src", ruleForm.jieyuebuPhoto);
        $("#wenshudanganPhotoImg").attr("src", ruleForm.wenshudanganPhoto);
        $("#yonghuPhotoImg").attr("src", ruleForm.yonghuPhoto);
        $("#zhuguanPhotoImg").attr("src", ruleForm.zhuguanPhoto);
        $("#zhurenPhotoImg").attr("src", ruleForm.zhurenPhoto);
    }

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addjieyueshenqing');
        window.location.href = "list.jsp";
    }

    // 下载
    function download(fileName) {
        var url = baseUrl+'file/download?fileName='+fileName;
        window.open(url);
    }

    //设置下载
    function setDownloadBtn() {

    }

    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });


    <%@ include file="../../static/myInfo.js"%>
    });
    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>