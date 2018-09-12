<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/5 0005
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>月度简报</title>
    <link rel="stylesheet" href="${ctx}/statics/css/style.css">
</head>
<body>
<!-- 封面页 -->
<div class="fullpage">
    <div class="brief">湖北省-襄阳市2018年8月简报<a href="#">下载word</a></div>
    <div class="img-wrapper text-center">
        <img src="${ctx}/statics/img/monthlyAnalyze.png" alt="">
    </div>
    <h1 class="page-title text-center">湖北省道路运输安全第三方监测</h1>
    <h1 class="page-title text-center">
        ${data.summaryReportDate}简报
    </h1>

    <h2 class="city text-center">（<i class="red">${data.areaName}</i>）</h2>

    <h3 class="company text-center">湖北车安达信息科技有限公司</h3>
    <h3 class="date text-center red">${data.summaryReportGenerateDate}</h3>
</div>
<!-- 目录页 -->
<div class="fullpage menu content-wrapper text-center">
    <h1 class="page-title text-center">目录</h1>
    <h5 class="sub-menu">
        <span class="song"> 一、襄阳市监测总体情况</span>
        <span class="pagenum">2</span>
        <span class="dot">......................................................</span>
    </h5>
    <h5 class="sub-menu">
        <span class="song">二、区（县）所三类报警情况</span>
        <span class="pagenum">3</span>
        <span class="dot">......................................................</span>
    </h5>
    <h5 class="sub-menu">
        <span class="song">三、企业三类报警情况</span>
        <span class="pagenum">6</span>
        <span class="dot">......................................................</span>
    </h5>
    <h5 class="sub-menu">
        <span class="song">四、三类报警车辆排名情况</span>
        <span class="pagenum">9</span>
        <span class="dot">......................................................</span>
    </h5>
    <h5 class="sub-menu">
        <span class="song">五、三类报警对比上月情况</span>
        <span class="pagenum">12</span>
        <span class="dot">......................................................</span>
    </h5>
    <h5 class="sub-menu">
        <span class="song">六、其他类型报警区（县）级报警情况</span>
        <span class="pagenum">13</span>
        <span class="dot">........................................</span>
    </h5>
</div>
<!-- 内容页 -->
<div class="content-wrapper">
    <p class="text-wrapper">
        车安达第三方监测平台在湖北省道路运输管理局的领导下，对湖北省道路运输营运车辆开展了动态监测及数据分析工作。现将2018年8月份襄阳市工作情况汇报如下：
    </p>

    <!-- 一 -->
    <h3 class="content-title">
        一、<i class="red">襄阳市</i>监测总体情况
    </h3>
    <p class="text-wrapper">
        <i class="red">2018</i>年<i class="red">8</i>月，<i class="red">襄阳市</i>接入我平台车辆共<i class="red">41287</i>台，其中班线<i
            class="red">1049</i>台，旅游<i class="red">215</i>台，危运<i class="red">1894</i>台（两客一危<i class="red">3158</i>台），普货（总质量12吨）<i
            class="red">38129</i>台。
    </p>
    <div class="text-center img-wrapper">
        <div id="chartContainer1" style="height: 300px;width: 500px;"></div>
    </div>
    <p class="text-wrapper">
        车辆报警总事件数为<i class="red">21357</i>次，其中班线客运车辆<i class="red">8329</i>次，车均报警<i class="red">7.94</i>次；旅游客运车辆<i
            class="red">834</i>次，车均报警<i class="red">3.88</i>次；危险品运输车辆<i class="red">2342</i>次，车均报警<i
            class="red">1.24</i>次；普货（总质量12吨）车辆<i class="red">9852</i>次，车均报警<i class="red">0.26</i>次。
    </p>
    <div class="text-center img-wrapper">
        <div id="chartContainer2" style="height: 300px;width: 500px;"></div>
    </div>
    <div class="text-center img-wrapper">
        <div id="chartContainer3" style="height: 300px;width: 500px;"></div>
    </div>

    <!-- 二 -->
    <h3 class="content-title">
        二、区（县）所超速、疲劳驾驶、凌晨2-5时禁行三类报警情况
    </h3>
    <p class="text-wrapper">
        从各区（县）车均报警台次情况来看，全市车均报警次数为<i class="red">0.52</i>次，车均报警次数排名前三的为：<i class="red">谷城县、宜城市、枣阳市</i>，分别为：<i
            class="red">3.37、0.57、0.55</i>。重点营运（两客一危）车辆车均报警次数排名前三的为：<i class="red">谷城县、枣阳市、宜城市</i>，分别为：<i class="red">15.96、6.60、4.03</i>。
    </p>
    <h4 class="table-title text-center">
        <i class="red">2018</i>年<i class="red">8</i>月份车辆报警情况排名表
    </h4>
    <div class="table-wrapper">
        <table class="table" border="1">
            <tr>
                <th>排名</th>
                <th>辖区</th>
                <th>报警车辆数</th>
                <th>报警次数</th>
                <th>报警均值</th>
            </tr>
            <tr>
                <td>1</td>
                <td>谷城县</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td>2</td>
                <td>宜城市</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td>3</td>
                <td>枣阳市</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td>4</td>
                <td>襄州区</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td>5</td>
                <td>樊城区</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td>6</td>
                <td>高新区</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td>7</td>
                <td>襄城区</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td>8</td>
                <td>老河口市</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td>9</td>
                <td>南漳县</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td>10</td>
                <td>保康县</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td colspan="2">小计</td>
                <td>123123</td>
                <td>123123</td>
                <td>0.52</td>
            </tr>
        </table>
    </div>

    <h4 class="table-title text-center">
        <i class="red">2018</i>年<i class="red">8</i>月份重点营运车辆报警情况排名表
    </h4>
    <div class="table-wrapper">
        <table class="table" border="1">
            <tr>
                <th>排名</th>
                <th>辖区</th>
                <th>报警车辆数</th>
                <th>报警次数</th>
                <th>报警均值</th>
            </tr>
            <tr>
                <td>1</td>
                <td>谷城县</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td>2</td>
                <td>宜城市</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td>3</td>
                <td>枣阳市</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td>4</td>
                <td>襄州区</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td>5</td>
                <td>樊城区</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td>6</td>
                <td>高新区</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td>7</td>
                <td>襄城区</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td>8</td>
                <td>老河口市</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td>9</td>
                <td>南漳县</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td>10</td>
                <td>保康县</td>
                <td>661</td>
                <td>661</td>
                <td>661</td>
            </tr>
            <tr>
                <td colspan="2">小计</td>
                <td>123123</td>
                <td>123123</td>
                <td>0.52</td>
            </tr>
        </table>
    </div>
    <p class="text-wrapper">
        其中，班线客运车均报警辖区排名前三的为：<i class="red">谷城县、枣阳市、襄州区</i>，分别为：<i class="red">19.29、10.44、9.84</i>；旅游客运车均报警辖区排名前三的为：<i
            class="red">谷城县、枣阳市、襄州区</i>，分别为：<i class="red">22.20、5.33、3.21</i>；危险品运输车均报警辖区排名前三的为：<i class="red">枣阳市、宜城市、谷城县</i>，分别为：<i
            class="red">5.30、3.81、0.88</i>；普货（总质量12吨）车均报警辖区排名前三的为：<i class="red">枣阳市、樊城区、宜城市</i>，分别为：<i class="red">0.34、0.33、0.32</i>。
    </p>

    <h4 class="table-title text-center">
        <i class="red">2018</i>年<i class="red">8</i>月份班线客运车辆报警情况排名表
    </h4>
    <div class="table-wrapper">
        <table class="table" border="1">
            <tr>
                <th>排名</th>
                <th>辖区</th>
                <th>企业报警户数</th>
                <th>企业报警户数</th>
                <th>超速报警</th>
                <th>疲劳驾驶</th>
                <th>2-5点禁驾</th>
                <th>报警总次数</th>
                <th>报警均值</th>
            </tr>
            <tr>
                <td>1</td>
                <td>谷城县</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>2</td>
                <td>枣阳市</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>3</td>
                <td>襄州区</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>4</td>
                <td>宜城市</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>5</td>
                <td>樊城区</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>6</td>
                <td>老河口市</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>7</td>
                <td>南漳县</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td colspan="2">小计</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>


        </table>
    </div>

    <h4 class="table-title text-center">
        <i class="red">2018</i>年<i class="red">8</i>月份旅游客运车辆报警情况排名表
    </h4>
    <div class="table-wrapper">
        <table class="table" border="1">
            <tr>
                <th>排名</th>
                <th>辖区</th>
                <th>企业报警户数</th>
                <th>企业报警户数</th>
                <th>超速报警</th>
                <th>疲劳驾驶</th>
                <th>2-5点禁驾</th>
                <th>报警总次数</th>
                <th>报警均值</th>
            </tr>
            <tr>
                <td>1</td>
                <td>谷城县</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>2</td>
                <td>枣阳市</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>3</td>
                <td>襄州区</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td colspan="2">小计</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>


        </table>
    </div>

    <h4 class="table-title text-center">
        <i class="red">2018</i>年<i class="red">8</i>月份危险品运输车辆报警情况排名表
    </h4>
    <div class="table-wrapper">
        <table class="table" border="1">
            <tr>
                <th>排名</th>
                <th>辖区</th>
                <th>企业报警户数</th>
                <th>企业报警户数</th>
                <th>超速报警</th>
                <th>疲劳驾驶</th>
                <th>报警总次数</th>
                <th>报警均值</th>
            </tr>
            <tr>
                <td>1</td>
                <td>谷城县</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>2</td>
                <td>枣阳市</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>3</td>
                <td>襄州区</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>4</td>
                <td>宜城市</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>5</td>
                <td>樊城区</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>6</td>
                <td>老河口市</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>7</td>
                <td>南漳县</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td colspan="2">小计</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
        </table>
    </div>

    <h4 class="table-title text-center">
        2018年8月份普货（总质量12吨）车辆报警情况排名表
    </h4>
    <div class="table-wrapper">
        <table class="table" border="1">
            <tr>
                <th>排名</th>
                <th>辖区</th>
                <th>企业报警户数</th>
                <th>企业报警户数</th>
                <th>超速报警</th>
                <th>疲劳驾驶</th>
                <th>报警总次数</th>
                <th>报警均值</th>
            </tr>
            <tr>
                <td>1</td>
                <td>谷城县</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>2</td>
                <td>枣阳市</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>3</td>
                <td>襄州区</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>4</td>
                <td>宜城市</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>5</td>
                <td>樊城区</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>6</td>
                <td>老河口市</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td>7</td>
                <td>南漳县</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
            <tr>
                <td colspan="2">小计</td>
                <td>2</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>104</td>
                <td>19.2</td>
            </tr>
        </table>
    </div>

    <!-- 三 -->
    <h3 class="content-title">
        三、企业超速、疲劳驾驶、凌晨2-5时禁行三类报警情况
    </h3>
    <p class="text-wrapper">
        从各企业车均报警台次情况来看，班线客运车均报警前三的为：<i class="red">谷城县汽车运输总公司、枣阳市四达汽车运输有限公司、湖北襄阳安达运输有限责任公司（8573）</i>，分别为<i class="red">25.68、25.50、20.32</i>；旅游客运车均报警前三的为：<i
            class="red">谷城县汽车运输总公司、枣阳市四达汽车运输有限公司、襄阳恒达运业有限公司</i>，分别为<i class="red">22.20、10.53、5.40</i>；危险品运输车均报警前三的为：<i
            class="red">枣阳市光武石化运输有限公司、宜城市万昌运输有限公司（14395）、湖北新鄂西运输有限公司</i>，分别为<i class="red">6.54、6.10、4.60</i>；普货（总质量12吨）车均报警前三的企业为：<i
            class="red">东风汽车股份有限公司、湖北驷通壹达速运有限公司、襄阳市钱程似锦汽车运输服务有限公司</i>，分别为33.80、14.50、11.00</p>。
    </p>

    <h4 class="table-title text-center">
        <i class="red">2018</i>年<i class="red">8</i>月份班线客运企业报警情况排名表
    </h4>
    <div class="table-wrapper">
        <table class="table" border="1">
            <tr>
                <th>排名</th>
                <th>辖区</th>
                <th>企业名称</th>
                <th>报警车辆数</th>
                <th>报警次数</th>
                <th>报警均值</th>
            </tr>
            <tr>
                <td>1</td>
                <td>谷城县</td>
                <td>谷城县汽车运输总公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>2</td>
                <td>枣阳市</td>
                <td>枣阳市四达汽车运输有限公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>3</td>
                <td>襄州区</td>
                <td>湖北神州运业集团有限公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>4</td>
                <td>枣阳市</td>
                <td>枣阳金利客运有限责任公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>5</td>
                <td>襄州区</td>
                <td>襄阳恒达运业有限公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>6</td>
                <td>谷城县</td>
                <td>宜城顺达汽车运输有限公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>7</td>
                <td>宜城市</td>
                <td>谷城县汽车运输总公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>8</td>
                <td>谷城县</td>
                <td>谷城县汽车运输总公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>9/td>
                <td>枣阳市</td>
                <td>枣阳市宏兴运输有限公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>10</td>
                <td>老河口市</td>
                <td>老河口市顺通运业有限责任公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
        </table>
    </div>

    <h4 class="table-title text-center">
        <i class="red">2018</i>年<i class="red">8</i>月份旅游客运企业报警情况排名表
    </h4>
    <div class="table-wrapper">
        <table class="table" border="1">
            <tr>
                <th>排名</th>
                <th>辖区</th>
                <th>企业名称</th>
                <th>报警车辆数</th>
                <th>报警次数</th>
                <th>报警均值</th>
            </tr>
            <tr>
                <td>1</td>
                <td>谷城县</td>
                <td>谷城县汽车运输总公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>2</td>
                <td>枣阳市</td>
                <td>枣阳市四达汽车运输有限公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>3</td>
                <td>襄州区</td>
                <td>湖北神州运业集团有限公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>4</td>
                <td>枣阳市</td>
                <td>枣阳金利客运有限责任公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
        </table>
    </div>

    <h4 class="table-title text-center">
        <i class="red">2018</i>年<i class="red">8</i>月份危运企业报警情况排名表
    </h4>
    <div class="table-wrapper">
        <table class="table" border="1">
            <tr>
                <th>排名</th>
                <th>辖区</th>
                <th>企业名称</th>
                <th>报警车辆数</th>
                <th>报警次数</th>
                <th>报警均值</th>
            </tr>
            <tr>
                <td>1</td>
                <td>谷城县</td>
                <td>谷城县汽车运输总公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>2</td>
                <td>枣阳市</td>
                <td>枣阳市四达汽车运输有限公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>3</td>
                <td>襄州区</td>
                <td>湖北神州运业集团有限公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>4</td>
                <td>枣阳市</td>
                <td>枣阳金利客运有限责任公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>5</td>
                <td>襄州区</td>
                <td>襄阳恒达运业有限公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>6</td>
                <td>谷城县</td>
                <td>宜城顺达汽车运输有限公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>7</td>
                <td>宜城市</td>
                <td>谷城县汽车运输总公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>8</td>
                <td>谷城县</td>
                <td>谷城县汽车运输总公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>9/td>
                <td>枣阳市</td>
                <td>枣阳市宏兴运输有限公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
            <tr>
                <td>10</td>
                <td>老河口市</td>
                <td>老河口市顺通运业有限责任公司</td>
                <td>78</td>
                <td>2320</td>
                <td>23</td>
            </tr>
        </table>
    </div>

    <h4 class="table-title text-center">
        <i class="red">2018</i>年<i class="red">8</i>月份普货（总质量12吨）企业报警情况排名表
    </h4>
    <div class="table-wrapper">
        <table class="table" border="1">
            <tr>
                <th>排名</th>
                <th>辖区</th>
                <th>企业名称</th>
                <th>报警车辆数</th>
                <th>报警次数</th>
                <th>报警均值</th>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>张清宏</td>
                <td>1</td>
                <td>112</td>
                <td>116</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>张清宏</td>
                <td>1</td>
                <td>112</td>
                <td>116</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>张清宏</td>
                <td>1</td>
                <td>112</td>
                <td>116</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>张清宏</td>
                <td>1</td>
                <td>112</td>
                <td>116</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>张清宏</td>
                <td>1</td>
                <td>112</td>
                <td>116</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>张清宏</td>
                <td>1</td>
                <td>112</td>
                <td>116</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>张清宏</td>
                <td>1</td>
                <td>112</td>
                <td>116</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>张清宏</td>
                <td>1</td>
                <td>112</td>
                <td>116</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>张清宏</td>
                <td>1</td>
                <td>112</td>
                <td>116</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>张清宏</td>
                <td>1</td>
                <td>112</td>
                <td>116</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>张清宏</td>
                <td>1</td>
                <td>112</td>
                <td>116</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>张清宏</td>
                <td>1</td>
                <td>112</td>
                <td>116</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>张清宏</td>
                <td>1</td>
                <td>112</td>
                <td>116</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>张清宏</td>
                <td>1</td>
                <td>112</td>
                <td>116</td>
            </tr>
        </table>
    </div>

    <!-- 四 -->
    <h3 class="content-title">
        四、超速、疲劳驾驶、凌晨2-5时禁行三类报警车辆排名情况
    </h3>
    <p class="text-wrapper">
        从单台车辆报警情况来看，车辆报警次数排名前三的为：<i class="red">鄂FLQ326、鄂FLP178、鄂FEC377</i>，分别为：<i class="red">342、320、279</i>。
    </p>

    <h4 class="table-title text-center">
        <i class="red">2018</i>年<i class="red">8</i>月份全市车辆报警情况排名表
    </h4>
    <div class="table-wrapper">
        <table class="table" border="1">
            <tr>
                <th>排名</th>
                <th>辖区</th>
                <th>企业名称</th>
                <th>营运类型</th>
                <th>车牌号</th>
                <th>报警次数</th>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>班线客运</td>
                <td>鄂FLQ326</td>
                <td>342</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>班线客运</td>
                <td>鄂FLQ326</td>
                <td>342</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>班线客运</td>
                <td>鄂FLQ326</td>
                <td>342</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>班线客运</td>
                <td>鄂FLQ326</td>
                <td>342</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>班线客运</td>
                <td>鄂FLQ326</td>
                <td>342</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>班线客运</td>
                <td>鄂FLQ326</td>
                <td>342</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>班线客运</td>
                <td>鄂FLQ326</td>
                <td>342</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>班线客运</td>
                <td>鄂FLQ326</td>
                <td>342</td>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>班线客运</td>
                <td>鄂FLQ326</td>
                <td>342</td>
            </tr>
        </table>
    </div>

    <h2 class="text-center">以下是各区（县）报警次数排名前五的车辆。</h2>

    <h4 class="table-title text-center">
        <i class="red">2018</i>年<i class="red">8</i>月份襄阳市全区车辆报警情况排名表
    </h4>
    <div class="table-wrapper">
        <table class="table" border="1">
            <tr>
                <th>序号</th>
                <th>区所</th>
                <th>排名</th>
                <th>企业名称</th>
                <th>营运类型</th>
                <th>车牌号</th>
                <th>报警次数</th>
            </tr>
            <tr>
                <td rowspan="5">1</td>
                <td rowspan="5">襄城区</td>
                <td>1</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>2</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>3</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>4</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>5</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td rowspan="5">2</td>
                <td rowspan="5">宜城市</td>
                <td>1</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>2</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>3</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>4</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>5</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td rowspan="5">3</td>
                <td rowspan="5">高新区</td>
                <td>1</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>2</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>3</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>4</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>5</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td rowspan="5">4</td>
                <td rowspan="5">枣阳市</td>
                <td>1</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>2</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>3</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>4</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>5</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td rowspan="5">5</td>
                <td rowspan="5">老河口市</td>
                <td>1</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>2</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>3</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>4</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>5</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td rowspan="5">6</td>
                <td rowspan="5">保康县</td>
                <td>1</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>2</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>3</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>4</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>5</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td rowspan="5">7</td>
                <td rowspan="5">谷城县</td>
                <td>1</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>2</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>3</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>4</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
            <tr>
                <td>5</td>
                <td>李荣太</td>
                <td>普通货运</td>
                <td>鄂FTV616</td>
                <td>72</td>
            </tr>
        </table>
    </div>

    <!-- 五 -->
    <h3 class="content-title">
        五、超速、疲劳驾驶、凌晨2-5时禁行三类报警对比上月情况
    </h3>
    <p class="text-wrapper">
        对比上月超速、疲劳驾驶、凌晨2-5时禁行三类报警情况来看，全市报警总体下降<i class="red">35.67%</i>。其中超速报警下降<i class="red">45.56%</i>，疲劳驾驶报警下降<i
            class="red">2.70%</i>，凌晨2-5时禁行报警与上月持平。
    </p>
    <div class="img-wrapper text-center">
        <img src="${ctx}/statics/img/analyze4.png" alt="">
    </div>
    <div class="img-wrapper text-center">
        <img src="${ctx}/statics/img/analyze5.png" alt="">
    </div>
    <div class="img-wrapper text-center">
        <img src="${ctx}/statics/img/analyze6.png" alt="">
    </div>
    <div class="img-wrapper text-center">
        <img src="${ctx}/statics/img/analyze7.png" alt="">
    </div>

    <!-- 六 -->
    <h3 class="content-title">
        六、其他类型报警区（县）级报警情况
    </h3>
    <p class="text-wrapper">
        备注：其他报警包括：卫星定位漂移、轨迹不完整和疑似异地经营。
    </p>
    <h4 class="table-title text-center">
        <i class="red">2018</i>年<i class="red">8</i>月份其他类型报警区（县）排名表
    </h4>
    <div class="table-wrapper">
        <table class="table" border="1">
            <tr>
                <th>排名</th>
                <th>辖区</th>
                <th>报警车辆数</th>
                <th>报警次数</th>
                <th>报警均值</th>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>17675</td>
                <td>2131</td>
                <td>0.2</td>
            </tr>
            <tr>
                <td>2</td>
                <td>谷城县</td>
                <td>17675</td>
                <td>2131</td>
                <td>0.2</td>
            </tr>
            <tr>
                <td>3</td>
                <td>老河口市</td>
                <td>17675</td>
                <td>2131</td>
                <td>0.2</td>
            </tr>
            <tr>
                <td>4</td>
                <td>樊城区</td>
                <td>17675</td>
                <td>2131</td>
                <td>0.2</td>
            </tr>
            <tr>
                <td>5</td>
                <td>保康县</td>
                <td>17675</td>
                <td>2131</td>
                <td>0.2</td>
            </tr>
            <tr>
                <td>6</td>
                <td>枣阳市</td>
                <td>17675</td>
                <td>2131</td>
                <td>0.2</td>
            </tr>
            <tr>
                <td colspan="2">小计</td>
                <td>12315</td>
                <td>123</td>
                <td>0.2</td>
            </tr>
        </table>
    </div>
    <h4 class="table-title text-center">
        <i class="red">2018</i>年<i class="red">8</i>月份其他类型报警企业排名表
    </h4>
    <div class="table-wrapper">
        <table class="table" border="1">
            <tr>
                <th>排名</th>
                <th>辖区</th>
                <th>企业名称</th>
                <th>报警车辆数</th>
                <th>报警次数</th>
                <th>报警均值</th>
            </tr>
            <tr>
                <td>1</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>95</td>
                <td>67</td>
                <td>0.71</td>
            </tr>
            <tr>
                <td>2</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>95</td>
                <td>67</td>
                <td>0.71</td>
            </tr>
            <tr>
                <td>3</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>95</td>
                <td>67</td>
                <td>0.71</td>
            </tr>
            <tr>
                <td>4</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>95</td>
                <td>67</td>
                <td>0.71</td>
            </tr>
            <tr>
                <td>5</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>95</td>
                <td>67</td>
                <td>0.71</td>
            </tr>
            <tr>
                <td>6</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>95</td>
                <td>67</td>
                <td>0.71</td>
            </tr>
            <tr>
                <td>7</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>95</td>
                <td>67</td>
                <td>0.71</td>
            </tr>
            <tr>
                <td>8</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>95</td>
                <td>67</td>
                <td>0.71</td>
            </tr>
            <tr>
                <td>9</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>95</td>
                <td>67</td>
                <td>0.71</td>
            </tr>
            <tr>
                <td>10</td>
                <td>襄州区</td>
                <td>湖北襄阳安达运输有限责任公司（8573）</td>
                <td>95</td>
                <td>67</td>
                <td>0.71</td>
            </tr>
        </table>
    </div>
</div>
<script type="text/javascript" src="${ctx}/statics/script/echarts.common.min.js"></script>
<script type="text/javascript">
    initChartContainer1();
    initChartContainer2();
    initChartContainer3();
    function initChartContainer1() {
        var dom = document.getElementById("chartContainer1");
        var myChart = echarts.init(dom);
        var option = {
            title: {
                text: '各类营运车辆数占比',
                x: 'center',
                top:10,
                textStyle: {
                    fontSize: 18,
                    align: 'center',
                    fontFamily: '宋体'
                }
            },
            legend: {
                bottom: 10,
                left: 'center',
                itemWidth:12,
                itemHeight:12,
                data: [{name: '班线客运', icon: 'square'},
                    {name: '旅游客运', icon: 'square'},
                    {name: '危运', icon: 'square'},
                    {name: '普通货运', icon: 'square'}]
            },
            color: ['#5B9BD5', '#ED7D31', '#A5A5A5', '#FFC000'],
            series: [
                {
                    name: '各类营运车辆数占比',
                    type: 'pie',
                    radius: '70%',
                    center: ['50%', '52%'],
                    label: {
                        normal: {
                            show: true,
                            position: 'inner',
                            textStyle: {
                                fontWeight: 300,
                                fontSize: 14
                            },
                            formatter: function (data) {
                                // '{d}%'
                                return Number(data.percent).toFixed(0) + "%";
                            }
                        }
                    },
                    data: ${chartContainer1Values},
                    /*[
                        {value: "310", name: '班线客运'},
                        {value: "234", name: '旅游客运'},
                        {value: "135", name: '危运'},
                        {value: "1548", name: '普通货运'}
                    ],*/
                }
            ]
        };
        if (option && typeof option === "object") {
            myChart.setOption(option, true);
        }
    }
    function initChartContainer2() {
        var dom = document.getElementById("chartContainer2");
        var myChart = echarts.init(dom);
        var option = {
            title: {
                text: '襄阳市2018年8月份报警情况统计表',
                x: 'center',
                top: 10,
                textStyle: {
                    fontSize: 18,
                    align: 'center',
                    fontFamily: '宋体'
                }
            },
            color: ['#5B9BD5', '#ED7D31', '#A5A5A5'],
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'shadow'
                }
            },
            legend: {
                bottom: 10,
                left: 'center',
                itemWidth:12,
                itemHeight:12,
                data: [{name: '超速', icon: 'square'},
                    {name: '疲劳驾驶', icon: 'square'},
                    {name: '2-5时禁驾', icon: 'square'}]
            },
            calculable: false,
            xAxis: [
                {
                    type: 'category',
                    axisTick: {show: false},
                    data: ['班线客运', '旅游客运', '危运', '普通货运']
                }
            ],
            yAxis: [
                {
                    type: 'value'
                }
            ],
            series: [
                {
                    name: '超速',
                    type: 'bar',
                    barGap: 0,
                    barWidth:20,
                    data: [320, 332, 301, 334]
                },
                {
                    name: '疲劳驾驶',
                    type: 'bar',
                    barWidth:20,
                    data: [220, 182, 191, 234]
                },
                {
                    name: '2-5时禁驾',
                    type: 'bar',
                    barWidth:20,
                    data: [150, 232, 201, 154]
                }
            ]
        };
        if (option && typeof option === "object") {
            myChart.setOption(option, true);
        }
    }
    function initChartContainer3() {
        var dom = document.getElementById("chartContainer3");
        var myChart = echarts.init(dom);
        var option = {
            title: {
                text: '三类违规报警次数占比情况',
                x: 'center',
                top:10,
                textStyle: {
                    fontSize: 18,
                    align: 'center',
                    fontFamily: '宋体'
                }
            },
            legend: {
                bottom: 10,
                left: 'center',
                itemWidth:12,
                itemHeight:12,
                data: [{name: '超速', icon: 'square'},
                    {name: '疲劳驾驶', icon: 'square'},
                    {name: '2-5时禁驾', icon: 'square'}]
            },
            color: ['#5B9BD5', '#ED7D31', '#A5A5A5'],
            series: [
                {
                    name: '三类违规报警次数占比情况',
                    type: 'pie',
                    radius: '70%',
                    center: ['50%', '52%'],
                    label: {
                        normal: {
                            show: true,
                            position: 'inner',
                            textStyle: {
                                fontWeight: 300,
                                fontSize: 14
                            },
                            formatter: function (data) {
                                // '{d}%'
                                return Number(data.percent).toFixed(0) + "%";
                            }
                        }
                    },
                    data: [
                        {value: "13906", name: '超速'},
                        {value: "7424", name: '疲劳驾驶'},
                        {value: "27", name: '2-5时禁驾'}
                    ]
                }
            ]
        };
        if (option && typeof option === "object") {
            myChart.setOption(option, true);
        }
    }
</script>
</body>
</html>