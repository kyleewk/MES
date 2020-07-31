/**
 * Created by Administrator on 2020\5\20 0020.
 */
$(function () {
    //
    var chart1 = echarts.init(document.getElementById('chart_pro1'));
    //2
    var
        option = {
            tooltip : {
                trigger: 'axis'
            },
            toolbox: {
                show : true,
                feature : {
                    mark : {show: true},
                    dataView : {show: true, readOnly: false},
                    magicType: {show: true, type: ['line', 'bar']},
                    restore : {show: true},
                    saveAsImage : {show: true}
                }
            },
            calculable : true,
            legend: {
                data:['产量','销量','平均利润']
            },
            xAxis : [
                {
                    type : 'category',
                    data : ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
                }
            ],
            yAxis : [
                {
                    type : 'value',
                    name : '产量',
                    axisLabel : {
                        formatter: '{value} 件'
                    }
                },
                {
                    type : 'value',
                    name : '平均利润',
                    axisLabel : {
                        formatter: '{value} 百万元'
                    }
                }
            ],
            areaStyle : {
                color : '#0000FF'
            },
            series : [

                {
                    name:'产量',
                    type:'bar',
                    data:[2500, 4000, 5000, 6202, 7800, 9700, 8600, 9200, 4600, 3300, 2004, 2300]
                },
                {
                    name:'销量',
                    type:'bar',
                    data:[3500, 3000, 4000, 7202, 9800, 8700, 9600, 8200, 6600, 4300, 1004, 1300]
                },
                {
                    name:'平均利润',
                    type:'line',
                    yAxisIndex: 1,
                    data:[20, 25, 33, 35, 33, 40, 38, 33, 34, 35, 22, 21]
                }
            ]
        };

    //
    chart1.setOption(option);


});