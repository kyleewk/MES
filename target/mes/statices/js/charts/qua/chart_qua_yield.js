/**
 * Created by Administrator on 2020\5\20 0020.
 */
$(function () {
    //
    var chart1 = echarts.init(document.getElementById('chart_qua_yeild'));

    var url1 = $("#path").val()+'/chart/getYield';

    $.ajax({
        url: url1,
        type: 'post',
        dataType: 'json',
        success: function (r) {

            var option = {
                title : {
                    text: '良率月报',
                    subtext: '按机种显示'
                },
                tooltip : {
                    trigger: 'axis'
                },
                legend: {
                    data:['月良率']
                },
                toolbox: {
                    show : true,
                    feature : {
                        mark : {show: true},
                        dataView : {show: true, readOnly: false},
                        magicType : {show: true, type: ['line', 'bar']},
                        restore : {show: true},
                        saveAsImage : {show: true}
                    }
                },
                calculable : true,
                xAxis : [
                    {
                        type : 'category',
                        boundaryGap : false,
                        data : ['M001','M002','M003','M004','M005']
                    }
                ],
                yAxis : [
                    {
                        type : 'value',
                        axisLabel : {
                            formatter: '{value} %'
                        }
                    }
                ],
                series : [
                    {
                        name:'M001',
                        type:'line',
                        data:r,
                        markPoint : {
                            data : [
                                {type : 'max', name: '最大值'},
                                {type : 'min', name: '最小值'}
                            ]
                        },
                        markLine : {
                            data : [
                                {type : 'average', name: '平均值'}
                            ]
                        }
                    }
                ]
            };

            //
            chart1.setOption(option);

        }
    });

    //2



});