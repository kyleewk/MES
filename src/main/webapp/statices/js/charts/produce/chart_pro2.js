/**
 * Created by Administrator on 2020\5\20 0020.
 */
$(function () {
    //
    var chart1 = echarts.init(document.getElementById('chart_pro2'));
    //2
    var option = {
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
            data:['预期产量','实际产量','生产效率']
        },
        xAxis : [
            {
                type : 'category',
                data : ['1线','2线','3线','4线','5线']
            }
        ],
        yAxis : [
            {
                type : 'value',
                name : '预计产量',
                axisLabel : {
                    formatter: '{value} 件'
                }
            },
            {
                type : 'value',
                name : '生产效率',
                axisLabel : {
                    formatter: '{value} %'
                }
            }
        ],

        series : [

            {
                name:'产量',
                type:'bar',
                itemStyle: {
                    normal: {
                        color: '#1E90FF',
                        barBorderWidth: 6,
                        barBorderRadius:0
                    }
                },
                data:[2000, 4000, 5000, 6000, 7000]
            },
            {
                name:'销量',
                type:'bar',
                itemStyle: {
                    normal: {
                        color: '#8A2BE2',
                        barBorderWidth: 6,
                        barBorderRadius: 0
                }
            },
                data:[2200, 3600, 6000, 4800, 7350]
            },
            {
                name:'平均利润',
                type:'line',
                yAxisIndex: 1,
                data:[110, 90, 120, 80, 105]
            }
        ]
    };



    //
    chart1.setOption(option);


});