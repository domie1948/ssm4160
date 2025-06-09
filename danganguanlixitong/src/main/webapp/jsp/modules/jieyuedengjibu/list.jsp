<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">


<head>
    <%@ include file="../../static/head.jsp" %>
    <!-- font-awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">


    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <!-- layui -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
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
                        <h3 class="block-title">借阅申请管理</h3>
                    </div>
                    <div class="col-md-6">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="${pageContext.request.contextPath}/index.jsp">
                                    <span class="ti-home"></span>
                                </a>
                            </li>
                            <li class="breadcrumb-item">借阅申请管理</li>
                            <li class="breadcrumb-item active">借阅申请列表</li>
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
                            <h3 class="widget-title">借阅申请列表</h3>
                            <div class="table-responsive mb-3">
                                <div class="col-sm-12">
                                                                                                                                                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        借阅用途
                                        <div class="layui-input-inline">
                                            <input type="text" id="yongtuSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="借阅用途" aria-controls="tableId">
                                        </div>
                                    </div>
                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        借阅部门
                                        <div class="layui-input-inline">
                                            <select name="bumenTypesSelectSearch"  style="width: 150px;" id="bumenTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        借阅时间
                                        <div class="layui-input-inline">
                                            <input type="datetime-local" id="jieyueTimeStartSearch" style="width: 190px;" class="form-control form-control-sm"
                                                   placeholder="开始" aria-controls="tableId">
                                        </div>
                                    </div>
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        <div class="layui-input-inline">
                                            <input type="datetime-local" id="jieyueTimeEndSearch" style="width: 190px;" class="form-control form-control-sm"
                                                   placeholder="结束" aria-controls="tableId">
                                        </div>
                                    </div>
                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        归还时间
                                        <div class="layui-input-inline">
                                            <input type="datetime-local" id="guihuanTimeStartSearch" style="width: 190px;" class="form-control form-control-sm"
                                                   placeholder="开始" aria-controls="tableId">
                                        </div>
                                    </div>
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        <div class="layui-input-inline">
                                            <input type="datetime-local" id="guihuanTimeEndSearch" style="width: 190px;" class="form-control form-control-sm"
                                                   placeholder="结束" aria-controls="tableId">
                                        </div>
                                    </div>
                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        供电公司
                                        <div class="layui-input-inline">
                                            <input type="text" id="gongdiangongsiSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="供电公司" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                         
                                    <%--<div class="layui-inline" style="margin-bottom: 10px;">--%>
                                        <%--借阅部领导审批类型--%>
                                        <%--<div class="layui-input-inline">--%>
                                            <%--<select name="jieyuebuTypesSelectSearch"  style="width: 150px;" id="jieyuebuTypesSelectSearch" class="form-control form-control-sm"--%>
                                                    <%--aria-controls="tableId">--%>
                                            <%--</select>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                                                                                                                                 <%----%>
                                    <%--<div class="layui-inline" style="margin-bottom: 10px;">--%>
                                        <%--主管领导审批类型--%>
                                        <%--<div class="layui-input-inline">--%>
                                            <%--<select name="zhuguanTypesSelectSearch"  style="width: 150px;" id="zhuguanTypesSelectSearch" class="form-control form-control-sm"--%>
                                                    <%--aria-controls="tableId">--%>
                                            <%--</select>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                                                                                                                                 <%----%>
                                    <%--<div class="layui-inline" style="margin-bottom: 10px;">--%>
                                        <%--综合部主任审批类型--%>
                                        <%--<div class="layui-input-inline">--%>
                                            <%--<select name="zhurenTypesSelectSearch"  style="width: 150px;" id="zhurenTypesSelectSearch" class="form-control form-control-sm"--%>
                                                    <%--aria-controls="tableId">--%>
                                            <%--</select>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                                                                                                                                 <%----%>
                                    <%--<div class="layui-inline" style="margin-bottom: 10px;">--%>
                                        <%--文书档案专责人员审批类型--%>
                                        <%--<div class="layui-input-inline">--%>
                                            <%--<select name="wenshudanganTypesSelectSearch"  style="width: 150px;" id="wenshudanganTypesSelectSearch" class="form-control form-control-sm"--%>
                                                    <%--aria-controls="tableId">--%>
                                            <%--</select>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                                                                                             
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        经办人
                                        <div class="layui-input-inline">
                                            <input type="text" id="jingbanrenSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="经办人" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                        
                                                                                                         
                                    <%--<div class="layui-inline" style="margin-bottom: 10px;">--%>
                                        <%--档案编号--%>
                                        <%--<div class="layui-input-inline">--%>
                                            <%--<input type="text" id="danganBianhaoSearch" style="width: 140px;" class="form-control form-control-sm"--%>
                                                   <%--placeholder="档案编号" aria-controls="tableId">--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        档案名称
                                        <div class="layui-input-inline">
                                            <input type="text" id="danganNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="档案名称" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        档案类型
                                        <div class="layui-input-inline">
                                            <select name="danganTypesSelectSearch"  style="width: 150px;" id="danganTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                                                                                                                                                                                                                                                                                                         
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        借阅部领导姓名
                                        <div class="layui-input-inline">
                                            <input type="text" id="jieyuebuNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="借阅部领导姓名" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <%--<div class="layui-inline" style="margin-bottom: 10px;">--%>
                                        <%--借阅部领导手机号--%>
                                        <%--<div class="layui-input-inline">--%>
                                            <%--<input type="text" id="jieyuebuPhoneSearch" style="width: 140px;" class="form-control form-control-sm"--%>
                                                   <%--placeholder="借阅部领导手机号" aria-controls="tableId">--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                                     <%----%>
                                    <%--<div class="layui-inline" style="margin-bottom: 10px;">--%>
                                        <%--借阅部领导身份证号--%>
                                        <%--<div class="layui-input-inline">--%>
                                            <%--<input type="text" id="jieyuebuIdNumberSearch" style="width: 140px;" class="form-control form-control-sm"--%>
                                                   <%--placeholder="借阅部领导身份证号" aria-controls="tableId">--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                                                                                                                                                                                                 
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        专责人员姓名
                                        <div class="layui-input-inline">
                                            <input type="text" id="wenshudanganNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="专责人员姓名" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <%--<div class="layui-inline" style="margin-bottom: 10px;">--%>
                                        <%--专责人员手机号--%>
                                        <%--<div class="layui-input-inline">--%>
                                            <%--<input type="text" id="wenshudanganPhoneSearch" style="width: 140px;" class="form-control form-control-sm"--%>
                                                   <%--placeholder="专责人员手机号" aria-controls="tableId">--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                                     <%----%>
                                    <%--<div class="layui-inline" style="margin-bottom: 10px;">--%>
                                        <%--专责人员身份证号--%>
                                        <%--<div class="layui-input-inline">--%>
                                            <%--<input type="text" id="wenshudanganIdNumberSearch" style="width: 140px;" class="form-control form-control-sm"--%>
                                                   <%--placeholder="专责人员身份证号" aria-controls="tableId">--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                                                                                                                                                                                                 
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        用户姓名
                                        <div class="layui-input-inline">
                                            <input type="text" id="yonghuNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="用户姓名" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <%--<div class="layui-inline" style="margin-bottom: 10px;">--%>
                                        <%--用户手机号--%>
                                        <%--<div class="layui-input-inline">--%>
                                            <%--<input type="text" id="yonghuPhoneSearch" style="width: 140px;" class="form-control form-control-sm"--%>
                                                   <%--placeholder="用户手机号" aria-controls="tableId">--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                                     <%----%>
                                    <%--<div class="layui-inline" style="margin-bottom: 10px;">--%>
                                        <%--用户身份证号--%>
                                        <%--<div class="layui-input-inline">--%>
                                            <%--<input type="text" id="yonghuIdNumberSearch" style="width: 140px;" class="form-control form-control-sm"--%>
                                                   <%--placeholder="用户身份证号" aria-controls="tableId">--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                                     
                                    <%--<div class="layui-inline" style="margin-bottom: 10px;">--%>
                                        <%--单位--%>
                                        <%--<div class="layui-input-inline">--%>
                                            <%--<input type="text" id="yonghuDanweiSearch" style="width: 140px;" class="form-control form-control-sm"--%>
                                                   <%--placeholder="单位" aria-controls="tableId">--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                                                                                                                                                                                                 
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        主管领导姓名
                                        <div class="layui-input-inline">
                                            <input type="text" id="zhuguanNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="主管领导姓名" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <%--<div class="layui-inline" style="margin-bottom: 10px;">--%>
                                        <%--主管领导手机号--%>
                                        <%--<div class="layui-input-inline">--%>
                                            <%--<input type="text" id="zhuguanPhoneSearch" style="width: 140px;" class="form-control form-control-sm"--%>
                                                   <%--placeholder="主管领导手机号" aria-controls="tableId">--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                                     <%----%>
                                    <%--<div class="layui-inline" style="margin-bottom: 10px;">--%>
                                        <%--主管领导身份证号--%>
                                        <%--<div class="layui-input-inline">--%>
                                            <%--<input type="text" id="zhuguanIdNumberSearch" style="width: 140px;" class="form-control form-control-sm"--%>
                                                   <%--placeholder="主管领导身份证号" aria-controls="tableId">--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                                                                                                                                                                                                 
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        综合部主任姓名
                                        <div class="layui-input-inline">
                                            <input type="text" id="zhurenNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="综合部主任姓名" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <%--<div class="layui-inline" style="margin-bottom: 10px;">--%>
                                        <%--综合部主任手机号--%>
                                        <%--<div class="layui-input-inline">--%>
                                            <%--<input type="text" id="zhurenPhoneSearch" style="width: 140px;" class="form-control form-control-sm"--%>
                                                   <%--placeholder="综合部主任手机号" aria-controls="tableId">--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                                     <%----%>
                                    <%--<div class="layui-inline" style="margin-bottom: 10px;">--%>
                                        <%--综合部主任身份证号--%>
                                        <%--<div class="layui-input-inline">--%>
                                            <%--<input type="text" id="zhurenIdNumberSearch" style="width: 140px;" class="form-control form-control-sm"--%>
                                                   <%--placeholder="综合部主任身份证号" aria-controls="tableId">--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                                                                                        
                                    <div class="layui-inline" style="margin-left: 30px;margin-bottom: 10px;">
                                        <button onclick="search()" type="button" class="btn btn-primary">查询</button>
                                        <%--<button onclick="add()" type="button" class="btn btn-success 新增">添加</button>--%>
                                        <%--<button onclick="graph()" type="button" class="btn btn-success 报表">报表</button>--%>
                                        <%--<button onclick="deleteMore()" type="button" class="btn btn-danger 删除">批量删除</button>--%>
                                    </div>
                                </div>
                                <table id="tableId" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th class="no-sort" style="min-width: 35px;">
                                            <div class="custom-control custom-checkbox">
                                                <input class="custom-control-input" type="checkbox" id="select-all"
                                                       onclick="chooseAll()">
                                                <label class="custom-control-label" for="select-all"></label>
                                            </div>
                                        </th>


                                        <th >用户姓名</th>
                                        <th >单位</th>
                                        <th >申请时间</th>
                                        <th >借阅用途</th>
                                        <th >借阅部门</th>
                                        <th >借阅时间</th>
                                        <th >归还时间</th>
                                        <th >供电公司</th>

                                        <th >档案名称</th>
                                        <th >档案类型</th>

                                        <th >借阅部领导姓名</th>
                                        <th >借阅部领导审批类型</th>

                                        <th >主管领导姓名</th>
                                        <th >主管领导审批类型</th>

                                        <th >综合部主任姓名</th>
                                        <th >综合部主任审批类型</th>

                                        <th >专责人员姓名</th>
                                        <th >专责人员审批类型</th>
                                        <th >经办人</th>
                                        <th >经办时间</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="thisTbody">
                                    </tbody>
                                </table>
                                <div class="col-md-6 col-sm-3">
                                    <div class="dataTables_length" id="tableId_length">

                                        <select name="tableId_length" aria-controls="tableId" id="selectPageSize"
                                                onchange="changePageSize()">
                                            <option value="10">10</option>
                                            <option value="25">25</option>
                                            <option value="50">50</option>
                                            <option value="100">100</option>
                                        </select>
                                        条 每页

                                    </div>
                                </div>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-end">
                                        <li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
                                            <a class="page-link" href="#" tabindex="-1">上一页</a>
                                        </li>

                                        <li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
                                            <a class="page-link" href="#">下一页</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
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
    <script language="javascript" type="text/javascript"
            src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
    <script>

        <%@ include file="../../utils/menu.jsp"%>
        <%@ include file="../../static/setMenu.js"%>
        <%@ include file="../../utils/baseUrl.jsp"%>
        <%@ include file="../../static/getRoleButtons.js"%>
        <%@ include file="../../static/crossBtnControl.js"%>
        var tableName = "jieyuedengjibu";
        var pageType = "list";
        var searchForm = {key: ""};
        var pageIndex = 1;
        var pageSize = 10;
        var totalPage = 0;
        var dataList = [];
        var sortColumn = '';
        var sortOrder = '';
        var ids = [];
        var checkAll = false;

        <!-- 级联表的级联字典表 -->
        var danganTypesOptions = [];

        <!-- 本表的级联字段表 -->
        var bumenTypesOptions = [];
        var jieyuebuTypesOptions = [];
        var zhuguanTypesOptions = [];
        var zhurenTypesOptions = [];
        var wenshudanganTypesOptions = [];

        function init() {
            // 满足条件渲染提醒接口
        }

        // 改变每页记录条数
        function changePageSize() {
            var selection = document.getElementById('selectPageSize');
            var index = selection.selectedIndex;
            pageSize = selection.options[index].value;
            getDataList();
        }



        // 查询
        function search() {
            searchForm = {key: ""};

        <!-- 级联表的级联字典表 -->
                                         
                            //档案编号
            var danganBianhaoSearchInput = $('#danganBianhaoSearch');
            if( danganBianhaoSearchInput != null){
                if (danganBianhaoSearchInput.val() != null && danganBianhaoSearchInput.val() != '') {
                    searchForm.danganBianhao = $('#danganBianhaoSearch').val();
                }
            }
                     
                            //档案名称
            var danganNameSearchInput = $('#danganNameSearch');
            if( danganNameSearchInput != null){
                if (danganNameSearchInput.val() != null && danganNameSearchInput.val() != '') {
                    searchForm.danganName = $('#danganNameSearch').val();
                }
            }
                     
            var danganTypesSelectSearchInput = document.getElementById("danganTypesSelectSearch");
            if(danganTypesSelectSearchInput != null){
                var danganTypesIndex = danganTypesSelectSearchInput.selectedIndex;
                if( danganTypesIndex  != 0){
                    searchForm.danganTypes = document.getElementById("danganTypesSelectSearch").options[danganTypesIndex].value;
                }
            }
                                                                                                                         
                            //借阅部领导姓名
            var jieyuebuNameSearchInput = $('#jieyuebuNameSearch');
            if( jieyuebuNameSearchInput != null){
                if (jieyuebuNameSearchInput.val() != null && jieyuebuNameSearchInput.val() != '') {
                    searchForm.jieyuebuName = $('#jieyuebuNameSearch').val();
                }
            }
                     
                            //借阅部领导手机号
            var jieyuebuPhoneSearchInput = $('#jieyuebuPhoneSearch');
            if( jieyuebuPhoneSearchInput != null){
                if (jieyuebuPhoneSearchInput.val() != null && jieyuebuPhoneSearchInput.val() != '') {
                    searchForm.jieyuebuPhone = $('#jieyuebuPhoneSearch').val();
                }
            }
                     
                            //借阅部领导身份证号
            var jieyuebuIdNumberSearchInput = $('#jieyuebuIdNumberSearch');
            if( jieyuebuIdNumberSearchInput != null){
                if (jieyuebuIdNumberSearchInput.val() != null && jieyuebuIdNumberSearchInput.val() != '') {
                    searchForm.jieyuebuIdNumber = $('#jieyuebuIdNumberSearch').val();
                }
            }
                                                                                 
                            //专责人员姓名
            var wenshudanganNameSearchInput = $('#wenshudanganNameSearch');
            if( wenshudanganNameSearchInput != null){
                if (wenshudanganNameSearchInput.val() != null && wenshudanganNameSearchInput.val() != '') {
                    searchForm.wenshudanganName = $('#wenshudanganNameSearch').val();
                }
            }
                     
                            //专责人员手机号
            var wenshudanganPhoneSearchInput = $('#wenshudanganPhoneSearch');
            if( wenshudanganPhoneSearchInput != null){
                if (wenshudanganPhoneSearchInput.val() != null && wenshudanganPhoneSearchInput.val() != '') {
                    searchForm.wenshudanganPhone = $('#wenshudanganPhoneSearch').val();
                }
            }
                     
                            //专责人员身份证号
            var wenshudanganIdNumberSearchInput = $('#wenshudanganIdNumberSearch');
            if( wenshudanganIdNumberSearchInput != null){
                if (wenshudanganIdNumberSearchInput.val() != null && wenshudanganIdNumberSearchInput.val() != '') {
                    searchForm.wenshudanganIdNumber = $('#wenshudanganIdNumberSearch').val();
                }
            }
                                                                                 
                            //用户姓名
            var yonghuNameSearchInput = $('#yonghuNameSearch');
            if( yonghuNameSearchInput != null){
                if (yonghuNameSearchInput.val() != null && yonghuNameSearchInput.val() != '') {
                    searchForm.yonghuName = $('#yonghuNameSearch').val();
                }
            }
                     
                            //用户手机号
            var yonghuPhoneSearchInput = $('#yonghuPhoneSearch');
            if( yonghuPhoneSearchInput != null){
                if (yonghuPhoneSearchInput.val() != null && yonghuPhoneSearchInput.val() != '') {
                    searchForm.yonghuPhone = $('#yonghuPhoneSearch').val();
                }
            }
                     
                            //用户身份证号
            var yonghuIdNumberSearchInput = $('#yonghuIdNumberSearch');
            if( yonghuIdNumberSearchInput != null){
                if (yonghuIdNumberSearchInput.val() != null && yonghuIdNumberSearchInput.val() != '') {
                    searchForm.yonghuIdNumber = $('#yonghuIdNumberSearch').val();
                }
            }
                     
                            //单位
            var yonghuDanweiSearchInput = $('#yonghuDanweiSearch');
            if( yonghuDanweiSearchInput != null){
                if (yonghuDanweiSearchInput.val() != null && yonghuDanweiSearchInput.val() != '') {
                    searchForm.yonghuDanwei = $('#yonghuDanweiSearch').val();
                }
            }
                                                                                 
                            //主管领导姓名
            var zhuguanNameSearchInput = $('#zhuguanNameSearch');
            if( zhuguanNameSearchInput != null){
                if (zhuguanNameSearchInput.val() != null && zhuguanNameSearchInput.val() != '') {
                    searchForm.zhuguanName = $('#zhuguanNameSearch').val();
                }
            }
                     
                            //主管领导手机号
            var zhuguanPhoneSearchInput = $('#zhuguanPhoneSearch');
            if( zhuguanPhoneSearchInput != null){
                if (zhuguanPhoneSearchInput.val() != null && zhuguanPhoneSearchInput.val() != '') {
                    searchForm.zhuguanPhone = $('#zhuguanPhoneSearch').val();
                }
            }
                     
                            //主管领导身份证号
            var zhuguanIdNumberSearchInput = $('#zhuguanIdNumberSearch');
            if( zhuguanIdNumberSearchInput != null){
                if (zhuguanIdNumberSearchInput.val() != null && zhuguanIdNumberSearchInput.val() != '') {
                    searchForm.zhuguanIdNumber = $('#zhuguanIdNumberSearch').val();
                }
            }
                                                                                 
                            //综合部主任姓名
            var zhurenNameSearchInput = $('#zhurenNameSearch');
            if( zhurenNameSearchInput != null){
                if (zhurenNameSearchInput.val() != null && zhurenNameSearchInput.val() != '') {
                    searchForm.zhurenName = $('#zhurenNameSearch').val();
                }
            }
                     
                            //综合部主任手机号
            var zhurenPhoneSearchInput = $('#zhurenPhoneSearch');
            if( zhurenPhoneSearchInput != null){
                if (zhurenPhoneSearchInput.val() != null && zhurenPhoneSearchInput.val() != '') {
                    searchForm.zhurenPhone = $('#zhurenPhoneSearch').val();
                }
            }
                     
                            //综合部主任身份证号
            var zhurenIdNumberSearchInput = $('#zhurenIdNumberSearch');
            if( zhurenIdNumberSearchInput != null){
                if (zhurenIdNumberSearchInput.val() != null && zhurenIdNumberSearchInput.val() != '') {
                    searchForm.zhurenIdNumber = $('#zhurenIdNumberSearch').val();
                }
            }
                                            <!-- 本表的查询条件 -->

                     
            //借阅用途
            var yongtuSearchInput = $('#yongtuSearch');
            if( yongtuSearchInput != null){
                if (yongtuSearchInput.val() != null && yongtuSearchInput.val() != '') {
                    searchForm.yongtu = $('#yongtuSearch').val();
                }
            }
     
                //借阅部门
            var bumenTypesSelectSearchInput = document.getElementById("bumenTypesSelectSearch");
            if(bumenTypesSelectSearchInput != null){
                var bumenTypesIndex = bumenTypesSelectSearchInput.selectedIndex;
                if( bumenTypesIndex  != 0){
                    searchForm.bumenTypes= document.getElementById("bumenTypesSelectSearch").options[bumenTypesIndex].value;
                }
            }
     
            var jieyueTimeStartSearch = $('#jieyueTimeStartSearch');
            if( jieyueTimeStartSearch != null){
                if (jieyueTimeStartSearch.val() != null && jieyueTimeStartSearch.val() != '') {
                    searchForm.jieyueTimeStart = $('#jieyueTimeStartSearch').val();
                }
            }
            var jieyueTimeEndSearch = $('#jieyueTimeEndSearch');
            if( jieyueTimeEndSearch != null){
                if (jieyueTimeEndSearch.val() != null && jieyueTimeEndSearch.val() != '') {
                    searchForm.jieyueTimeEnd = $('#jieyueTimeEndSearch').val();
                }
            }
     
            var guihuanTimeStartSearch = $('#guihuanTimeStartSearch');
            if( guihuanTimeStartSearch != null){
                if (guihuanTimeStartSearch.val() != null && guihuanTimeStartSearch.val() != '') {
                    searchForm.guihuanTimeStart = $('#guihuanTimeStartSearch').val();
                }
            }
            var guihuanTimeEndSearch = $('#guihuanTimeEndSearch');
            if( guihuanTimeEndSearch != null){
                if (guihuanTimeEndSearch.val() != null && guihuanTimeEndSearch.val() != '') {
                    searchForm.guihuanTimeEnd = $('#guihuanTimeEndSearch').val();
                }
            }
     
            //供电公司
            var gongdiangongsiSearchInput = $('#gongdiangongsiSearch');
            if( gongdiangongsiSearchInput != null){
                if (gongdiangongsiSearchInput.val() != null && gongdiangongsiSearchInput.val() != '') {
                    searchForm.gongdiangongsi = $('#gongdiangongsiSearch').val();
                }
            }
         
                //借阅部领导审批类型
            var jieyuebuTypesSelectSearchInput = document.getElementById("jieyuebuTypesSelectSearch");
            if(jieyuebuTypesSelectSearchInput != null){
                var jieyuebuTypesIndex = jieyuebuTypesSelectSearchInput.selectedIndex;
                if( jieyuebuTypesIndex  != 0){
                    searchForm.jieyuebuTypes= document.getElementById("jieyuebuTypesSelectSearch").options[jieyuebuTypesIndex].value;
                }
            }
                 
                //主管领导审批类型
            var zhuguanTypesSelectSearchInput = document.getElementById("zhuguanTypesSelectSearch");
            if(zhuguanTypesSelectSearchInput != null){
                var zhuguanTypesIndex = zhuguanTypesSelectSearchInput.selectedIndex;
                if( zhuguanTypesIndex  != 0){
                    searchForm.zhuguanTypes= document.getElementById("zhuguanTypesSelectSearch").options[zhuguanTypesIndex].value;
                }
            }
                 
                //综合部主任审批类型
            var zhurenTypesSelectSearchInput = document.getElementById("zhurenTypesSelectSearch");
            if(zhurenTypesSelectSearchInput != null){
                var zhurenTypesIndex = zhurenTypesSelectSearchInput.selectedIndex;
                if( zhurenTypesIndex  != 0){
                    searchForm.zhurenTypes= document.getElementById("zhurenTypesSelectSearch").options[zhurenTypesIndex].value;
                }
            }
                 
                //文书档案专责人员审批类型
            var wenshudanganTypesSelectSearchInput = document.getElementById("wenshudanganTypesSelectSearch");
            if(wenshudanganTypesSelectSearchInput != null){
                var wenshudanganTypesIndex = wenshudanganTypesSelectSearchInput.selectedIndex;
                if( wenshudanganTypesIndex  != 0){
                    searchForm.wenshudanganTypes= document.getElementById("wenshudanganTypesSelectSearch").options[wenshudanganTypesIndex].value;
                }
            }
             
            //经办人
            var jingbanrenSearchInput = $('#jingbanrenSearch');
            if( jingbanrenSearchInput != null){
                if (jingbanrenSearchInput.val() != null && jingbanrenSearchInput.val() != '') {
                    searchForm.jingbanren = $('#jingbanrenSearch').val();
                }
            }
                    getDataList();
        }

        // 获取数据列表
        function getDataList() {
            http("jieyueshenqing/page", "GET", {
                page: pageIndex,
                limit: pageSize,
                sort: sortColumn,
                order: sortOrder,
                //本表的
                yongtu: searchForm.yongtu,
                bumenTypes: searchForm.bumenTypes,
                jieyueTimeStart: searchForm.jieyueTimeStart,
                jieyueTimeEnd: searchForm.jieyueTimeEnd,
                guihuanTimeStart: searchForm.guihuanTimeStart,
                guihuanTimeEnd: searchForm.guihuanTimeEnd,
                gongdiangongsi: searchForm.gongdiangongsi,
                jieyuebuTypes: 2,
                zhuguanTypes: 2,
                zhurenTypes: 2,
                wenshudanganTypes: 2,
                jingbanren: searchForm.jingbanren,
            //级联表的
                danganBianhao: searchForm.danganBianhao,
                danganName: searchForm.danganName,
                danganTypes: searchForm.danganTypes,

                jieyuebuName: searchForm.jieyuebuName,
                jieyuebuPhone: searchForm.jieyuebuPhone,
                jieyuebuIdNumber: searchForm.jieyuebuIdNumber,

                wenshudanganName: searchForm.wenshudanganName,
                wenshudanganPhone: searchForm.wenshudanganPhone,
                wenshudanganIdNumber: searchForm.wenshudanganIdNumber,

                yonghuName: searchForm.yonghuName,
                yonghuPhone: searchForm.yonghuPhone,
                yonghuIdNumber: searchForm.yonghuIdNumber,
                yonghuDanwei: searchForm.yonghuDanwei,

                zhuguanName: searchForm.zhuguanName,
                zhuguanPhone: searchForm.zhuguanPhone,
                zhuguanIdNumber: searchForm.zhuguanIdNumber,

                zhurenName: searchForm.zhurenName,
                zhurenPhone: searchForm.zhurenPhone,
                zhurenIdNumber: searchForm.zhurenIdNumber,


            }, (res) => {
                if(res.code == 0) {
                    clear();
                    $("#thisTbody").html("");
                    dataList = res.data.list;
                    totalPage = res.data.totalPage;
                    for (var i = 0; i < dataList.length; i++) { //遍历一下表格数据  
                        var trow = setDataRow(dataList[i], i); //定义一个方法,返回tr数据 
                        $('#thisTbody').append(trow);
                    }
                    pagination(); //渲染翻页组件
                    getRoleButtons();// 权限按钮控制
                }
            });
        }

        // 渲染表格数据
        function setDataRow(item, number) {
            //创建行 
            var row = document.createElement('tr');
            row.setAttribute('class', 'useOnce');
            //创建勾选框
            var checkbox = document.createElement('td');
            var checkboxDiv = document.createElement('div');
            checkboxDiv.setAttribute("class", "custom-control custom-checkbox");
            var checkboxInput = document.createElement('input');
            checkboxInput.setAttribute("class", "custom-control-input");
            checkboxInput.setAttribute("type", "checkbox");
            checkboxInput.setAttribute('name', 'chk');
            checkboxInput.setAttribute('value', item.id);
            checkboxInput.setAttribute("id", number);
            checkboxDiv.appendChild(checkboxInput);
            var checkboxLabel = document.createElement('label');
            checkboxLabel.setAttribute("class", "custom-control-label");
            checkboxLabel.setAttribute("for", number);
            checkboxDiv.appendChild(checkboxLabel);
            checkbox.appendChild(checkboxDiv);
            row.appendChild(checkbox)



            //用户姓名
            var yonghuNameCell = document.createElement('td');
            yonghuNameCell.innerHTML = item.yonghuName;
            row.appendChild(yonghuNameCell);


            //单位
            var yonghuDanweiCell = document.createElement('td');
            yonghuDanweiCell.innerHTML = item.yonghuDanwei;
            row.appendChild(yonghuDanweiCell);

            //申请时间
            var insertTimeCell = document.createElement('td');
            insertTimeCell.innerHTML = item.insertTime;
            row.appendChild(insertTimeCell);


            //借阅用途
            var yongtuCell = document.createElement('td');
            yongtuCell.innerHTML = item.yongtu;
            row.appendChild(yongtuCell);


            //借阅部门
            var bumenTypesCell = document.createElement('td');
            bumenTypesCell.innerHTML = item.bumenValue;
            row.appendChild(bumenTypesCell);


            //借阅时间
            var jieyueTimeCell = document.createElement('td');
            jieyueTimeCell.innerHTML = item.jieyueTime;
            row.appendChild(jieyueTimeCell);


            //归还时间
            var guihuanTimeCell = document.createElement('td');
            guihuanTimeCell.innerHTML = item.guihuanTime;
            row.appendChild(guihuanTimeCell);


            //供电公司
            var gongdiangongsiCell = document.createElement('td');
            gongdiangongsiCell.innerHTML = item.gongdiangongsi;
            row.appendChild(gongdiangongsiCell);


                    //档案名称
            var danganNameCell = document.createElement('td');
            danganNameCell.innerHTML = item.danganName;
            row.appendChild(danganNameCell);

                        //档案类型
            var danganTypesCell = document.createElement('td');
            danganTypesCell.innerHTML = item.danganValue;
            row.appendChild(danganTypesCell);

                    //借阅部领导姓名
            var jieyuebuNameCell = document.createElement('td');
            jieyuebuNameCell.innerHTML = item.jieyuebuName;
            row.appendChild(jieyuebuNameCell);

            //借阅部领导审批类型
            var jieyuebuTypesCell = document.createElement('td');
            jieyuebuTypesCell.innerHTML = item.jieyuebuValue;
            row.appendChild(jieyuebuTypesCell);


            //主管领导姓名
            var zhuguanNameCell = document.createElement('td');
            zhuguanNameCell.innerHTML = item.zhuguanName;
            row.appendChild(zhuguanNameCell);

            //主管领导审批类型
            var zhuguanTypesCell = document.createElement('td');
            zhuguanTypesCell.innerHTML = item.zhuguanValue;
            row.appendChild(zhuguanTypesCell);


            //综合部主任姓名
            var zhurenNameCell = document.createElement('td');
            zhurenNameCell.innerHTML = item.zhurenName;
            row.appendChild(zhurenNameCell);

            //综合部主任审批类型
            var zhurenTypesCell = document.createElement('td');
            zhurenTypesCell.innerHTML = item.zhurenValue;
            row.appendChild(zhurenTypesCell);


                    //专责人员姓名
            var wenshudanganNameCell = document.createElement('td');
            wenshudanganNameCell.innerHTML = item.wenshudanganName;
            row.appendChild(wenshudanganNameCell);

            //专责人员审批类型
            var wenshudanganTypesCell = document.createElement('td');
            wenshudanganTypesCell.innerHTML = item.wenshudanganValue;
            row.appendChild(wenshudanganTypesCell);




            //经办人
            var jingbanrenCell = document.createElement('td');
            jingbanrenCell.innerHTML = item.jingbanren;
            row.appendChild(jingbanrenCell);


            //经办时间
            var jingbanrenTimeCell = document.createElement('td');
            jingbanrenTimeCell.innerHTML = item.jingbanrenTime;
            row.appendChild(jingbanrenTimeCell);



            //每行按钮
            var btnGroup = document.createElement('td');

            //详情按钮
            var detailBtn = document.createElement('button');
            var detailAttr = "detail(" + item.id + ')';
            detailBtn.setAttribute("type", "button");
            detailBtn.setAttribute("class", "btn btn-info btn-sm 查看");
            detailBtn.setAttribute("onclick", detailAttr);
            detailBtn.innerHTML = "查看";
            btnGroup.appendChild(detailBtn);

            //修改按钮
            // var editBtn = document.createElement('button');
            // var editAttr = 'edit(' + item.id + ')';
            // editBtn.setAttribute("type", "button");
            // editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
            // editBtn.setAttribute("onclick", editAttr);
            // editBtn.innerHTML = "修改";
            // btnGroup.appendChild(editBtn);
            //
            // //删除按钮
            // var deleteBtn = document.createElement('button');
            // var deleteAttr = 'remove(' + item.id + ')';
            // deleteBtn.setAttribute("type", "button");
            // deleteBtn.setAttribute("class", "btn btn-danger btn-sm 删除");
            // deleteBtn.setAttribute("onclick", deleteAttr);
            // deleteBtn.innerHTML = "删除";
            // btnGroup.appendChild(deleteBtn);
            row.appendChild(btnGroup);

            return row;
    }


        // 翻页
        function pageNumChange(val) {
            if (val == 'pre') {
                pageIndex--;
            } else if (val == 'next') {
                pageIndex++;
            } else {
                pageIndex = val;
            }
            getDataList();
        }

        // 下载
        function download(url) {
            window.open(url);
        }
        // 打开新窗口播放媒体
        function mediaPlay(url){
            window.open(url);
        }

        // 渲染翻页组件
        function pagination() {
            var beginIndex = pageIndex;
            var endIndex = pageIndex;
            var point = 4;
            //计算页码
            for (var i = 0; i < 3; i++) {
                if (endIndex == totalPage) {
                    break;
                }
                endIndex++;
                point--;
            }
            for (var i = 0; i < 3; i++) {
                if (beginIndex == 1) {
                    break;
                }
                beginIndex--;
                point--;
            }
            if (point > 0) {
                while (point > 0) {
                    if (endIndex == totalPage) {
                        break;
                    }
                    endIndex++;
                    point--;
                }
                while (point > 0) {
                    if (beginIndex == 1) {
                        break;
                    }
                    beginIndex--;
                    point--
                }
            }
            // 是否显示 前一页 按钮
            if (pageIndex > 1) {
                $('#tableId_previous').show();
            } else {
                $('#tableId_previous').hide();
            }
            // 渲染页码按钮
            for (var i = beginIndex; i <= endIndex; i++) {
                var pageNum = document.createElement('li');
                pageNum.setAttribute('onclick', "pageNumChange(" + i + ")");
                if (pageIndex == i) {
                    pageNum.setAttribute('class', 'paginate_button page-item active useOnce');
                } else {
                    pageNum.setAttribute('class', 'paginate_button page-item useOnce');
                }
                var pageHref = document.createElement('a');
                pageHref.setAttribute('class', 'page-link');
                pageHref.setAttribute('href', '#');
                pageHref.setAttribute('aria-controls', 'tableId');
                pageHref.setAttribute('data-dt-idx', i);
                pageHref.setAttribute('tabindex', 0);
                pageHref.innerHTML = i;
                pageNum.appendChild(pageHref);
                $('#tableId_next').before(pageNum);
            }
            // 是否显示 下一页 按钮
            if (pageIndex < totalPage) {
                $('#tableId_next').show();
                $('#tableId_next a').attr('data-dt-idx', endIndex + 1);
            } else {
                $('#tableId_next').hide();
            }
            var pageNumInfo = "当前第 " + pageIndex + " 页，共 " + totalPage + " 页";
            $('#tableId_info').html(pageNumInfo);
        }

        // 跳转到指定页
        function toThatPage() {
            //var index = document.getElementById('pageIndexInput').value;
            if (index < 0 || index > totalPage) {
                alert('请输入正确的页码');
            } else {
                pageNumChange(index);
            }
        }

        // 全选/全不选
        function chooseAll() {
            checkAll = !checkAll;
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                boxs[i].checked = checkAll;
            }
        }

        // 批量删除
        function deleteMore() {
            ids = []
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                if (boxs[i].checked) {
                    ids.push(boxs[i].value)
                }
            }
            if (ids.length == 0) {
                alert('请勾选要删除的记录');
            } else {
                remove(ids);
            }
        }

        // 删除
        function remove(id) {
            var mymessage = confirm("真的要删除吗？");
            if (mymessage == true) {
                var paramArray = [];
                if (id == ids) {
                    paramArray = id;
                } else {
                    paramArray.push(id);
                }
                httpJson("jieyueshenqing/delete", "POST", paramArray, (res) => {
                    if(res.code == 0){
                        getDataList();
                        alert('删除成功');
                    }
                });
            } else {
                alert("已取消操作");
            }
        }

        // 用户登出
        <%@ include file="../../static/logout.jsp"%>

        //修改
        function edit(id) {
            window.sessionStorage.setItem('updateId', id)
            window.location.href = "add-or-update.jsp"
        }

        //清除会重复渲染的节点
        function clear() {
            var elements = document.getElementsByClassName('useOnce');
            for (var i = elements.length - 1; i >= 0; i--) {
                elements[i].parentNode.removeChild(elements[i]);
            }
        }

        //添加
        function add() {
            window.sessionStorage.setItem("addjieyueshenqing", "addjieyueshenqing");
            window.location.href = "add-or-update.jsp"
        }

        //报表
        function graph() {
            window.location.href = "graph.jsp"
        }

        // 查看详情
        function detail(id) {
            window.sessionStorage.setItem("updateId", id);
            window.location.href = "info.jsp";
        }

    //填充级联表搜索下拉框
                                         
                     
                     
        function danganTypesSelectSearch() {
            var danganTypesSelectSearch = document.getElementById('danganTypesSelectSearch');
            if(danganTypesSelectSearch != null) {
                danganTypesSelectSearch.add(new Option('-请选择-',''));
                if (danganTypesOptions != null && danganTypesOptions.length > 0){
                    for (var i = 0; i < danganTypesOptions.length; i++) {
                            danganTypesSelectSearch.add(new Option(danganTypesOptions[i].indexName, danganTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                                                                                                                         
                     
                     
                                                                                 
                     
                     
                                                                                 
                     
                     
                     
                                                                                 
                     
                     
                                                                                 
                     
                     
                                        
    //填充本表搜索下拉框
                     
     
        function bumenTypesSelectSearch() {
            var bumenTypesSelectSearch = document.getElementById('bumenTypesSelectSearch');
            if(bumenTypesSelectSearch != null) {
                bumenTypesSelectSearch.add(new Option('-请选择-',''));
                if (bumenTypesOptions != null && bumenTypesOptions.length > 0){
                    for (var i = 0; i < bumenTypesOptions.length; i++) {
                            bumenTypesSelectSearch.add(new Option(bumenTypesOptions[i].indexName,bumenTypesOptions[i].codeIndex));
                    }
                }
            }
        }
     
     
     
         
        function jieyuebuTypesSelectSearch() {
            var jieyuebuTypesSelectSearch = document.getElementById('jieyuebuTypesSelectSearch');
            if(jieyuebuTypesSelectSearch != null) {
                jieyuebuTypesSelectSearch.add(new Option('-请选择-',''));
                if (jieyuebuTypesOptions != null && jieyuebuTypesOptions.length > 0){
                    for (var i = 0; i < jieyuebuTypesOptions.length; i++) {
                            jieyuebuTypesSelectSearch.add(new Option(jieyuebuTypesOptions[i].indexName,jieyuebuTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                 
        function zhuguanTypesSelectSearch() {
            var zhuguanTypesSelectSearch = document.getElementById('zhuguanTypesSelectSearch');
            if(zhuguanTypesSelectSearch != null) {
                zhuguanTypesSelectSearch.add(new Option('-请选择-',''));
                if (zhuguanTypesOptions != null && zhuguanTypesOptions.length > 0){
                    for (var i = 0; i < zhuguanTypesOptions.length; i++) {
                            zhuguanTypesSelectSearch.add(new Option(zhuguanTypesOptions[i].indexName,zhuguanTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                 
        function zhurenTypesSelectSearch() {
            var zhurenTypesSelectSearch = document.getElementById('zhurenTypesSelectSearch');
            if(zhurenTypesSelectSearch != null) {
                zhurenTypesSelectSearch.add(new Option('-请选择-',''));
                if (zhurenTypesOptions != null && zhurenTypesOptions.length > 0){
                    for (var i = 0; i < zhurenTypesOptions.length; i++) {
                            zhurenTypesSelectSearch.add(new Option(zhurenTypesOptions[i].indexName,zhurenTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                 
        function wenshudanganTypesSelectSearch() {
            var wenshudanganTypesSelectSearch = document.getElementById('wenshudanganTypesSelectSearch');
            if(wenshudanganTypesSelectSearch != null) {
                wenshudanganTypesSelectSearch.add(new Option('-请选择-',''));
                if (wenshudanganTypesOptions != null && wenshudanganTypesOptions.length > 0){
                    for (var i = 0; i < wenshudanganTypesOptions.length; i++) {
                            wenshudanganTypesSelectSearch.add(new Option(wenshudanganTypesOptions[i].indexName,wenshudanganTypesOptions[i].codeIndex));
                    }
                }
            }
        }
             
        
    //查询级联表搜索条件所有列表
            function danganTypesSelect() {
                //填充下拉框选项
                http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=dangan_types", "GET", {}, (res) => {
                    if(res.code == 0){
                        danganTypesOptions = res.data.list;
                    }
                });
            }

    //查询当前表搜索条件所有列表
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










        $(document).ready(function () {
            //激活翻页按钮
            $('#tableId_previous').attr('class', 'paginate_button page-item previous')
            $('#tableId_next').attr('class', 'paginate_button page-item next')
            //隐藏原生搜索框
            $('#tableId_filter').hide()
            //设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
            //设置项目名
            $('.sidebar-header h3 a').html(projectName)
            setMenu();
            init();

            //查询级联表的搜索下拉框
            danganTypesSelect();

            //查询当前表的搜索下拉框
            bumenTypesSelect();
            jieyuebuTypesSelect();
            zhuguanTypesSelect();
            zhurenTypesSelect();
            wenshudanganTypesSelect();
            getDataList();

        //级联表的下拉框赋值
                                                 
                         
                         
            danganTypesSelectSearch();
                                                                                                                                                 
                         
                         
                                                                                                 
                         
                         
                                                                                                 
                         
                         
                         
                                                                                                 
                         
                         
                                                                                                 
                         
                         
                                                
        //当前表的下拉框赋值
                                                             
             
            bumenTypesSelectSearch();
             
             
             
                         
            jieyuebuTypesSelectSearch();
                                                 
            zhuguanTypesSelectSearch();
                                                 
            zhurenTypesSelectSearch();
                                                 
            wenshudanganTypesSelectSearch();
                                     
                        
        <%@ include file="../../static/myInfo.js"%>
    });
</script>
</body>

</html>