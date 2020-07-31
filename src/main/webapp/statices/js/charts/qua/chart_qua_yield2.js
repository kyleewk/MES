/**
 * Created by Administrator on 2020\5\20 0020.
 */
$(function () {
    //
    var chart1 = echarts.init(document.getElementById('chart_qua_yeild2'));
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
                data:['PCB良率','SMT良率','平均利润']
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
                    name : '良率',
                    axisLabel : {
                        formatter: '{value} %'
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
                    name:'PCB良率',
                    type:'bar',
                    data:[85, 80, 90, 92, 96, 97, 96, 92, 86, 80, 94, 93]
                },
                {
                    name:'SMT良率',
                    type:'bar',
                    data:[95, 90, 95, 82, 86, 87, 86, 92, 96, 90, 84, 90]
                },
                {
                    name:'平均利润',
                    type:'line',
                    yAxisIndex: 1,
                    data:[20, 25, 33, 35, 33, 30, 38, 33, 34, 35, 22, 21]
                }
            ]
        };

    //
    chart1.setOption(option);


});