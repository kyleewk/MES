/**
 * Created by Administrator on 2020\5\20 0020.
 */
$(function () {
    //
    var chart1 = echarts.init(document.getElementById('chart_pro11'));

    var url1 = $("#path").val()+'/chart/getPro11';

    $.ajax({
        url:url1,
        type:'post',
        dataType:'json',
        success:function (r) {
            var M001 = r[0];
            var M002 = r[1];
            var M003 = r[2];
            var M004 = r[3];
            var M005 = r[4];
            console.log(M001);
            console.log(M002);
            console.log(M003);
            console.log(M004);
            console.log(M005);

            var
                option = {
                    tooltip : {
                        trigger: 'axis',
                        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                        }
                    },
                    legend: {
                        data:['M001', 'M002','M003','M004','M005']
                    },
                    toolbox: {
                        show : true,
                        feature : {
                            mark : {show: true},
                            dataView : {show: true, readOnly: false},
                            magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                            restore : {show: true},
                            saveAsImage : {show: true}
                        }
                    },
                    calculable : true,
                    xAxis : [
                        {
                            type : 'value'
                        }
                    ],
                    yAxis : [
                        {
                            type : 'category',
                            data : ['一线','二线','三线','四线','五线']
                        }
                    ],
                    series : [
                        {
                            name:'M001',
                            type:'bar',
                            stack: '总量',
                            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
                            data:M001
                        },
                        {
                            name:'M002',
                            type:'bar',
                            stack: '总量',
                            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
                            data:M002
                        },
                        {
                            name:'M003',
                            type:'bar',
                            stack: '总量',
                            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
                            data:M003
                        },
                        {
                            name:'M004',
                            type:'bar',
                            stack: '总量',
                            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
                            data:M004
                        },
                        {
                            name:'M005',
                            type:'bar',
                            stack: '总量',
                            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
                            data:M005
                        }
                    ]
                };


            //
            chart1.setOption(option);
        }

    });



});