/**
 * Created by Administrator on 2020\5\20 0020.
 */
$(function () {
    //
    var chart1 = echarts.init(document.getElementById('chart_store1'));
    //2
    var option = {
        title : {
            text: 'M型物料库存和采购全年分析',
            subtext: '这还是瞎编的'
        },
        tooltip : {
            trigger: 'axis'
        },
        legend: {
            data:['库存量','采购量']
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
                data : ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
            }
        ],
        yAxis : [
            {
                type : 'value',
                axisLabel : {
                    formatter: '{value} 件'
                }
            }
        ],
        series : [
            {
                name:'库存量',
                type:'bar',
                data:[2000, 2800, 3800, 4500, 3900, 7600, 9500, 8200, 6500, 3200, 4800, 3000],
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
            },
            {
                name:'采购量',
                type:'bar',
                data:[3200, 3800, 4800, 5500, 6900, 6600, 8500, 7200, 7500, 4200, 2800, 3000],
                markPoint : {
                    data : [
                        {type : 'max', name: '最大值'},
                        {type : 'min', name: '最小值'}
                    ]
                },
                markLine : {
                    data : [
                        {type : 'average', name : '平均值'}
                    ]
                }
            }
        ]
    };


    //
    chart1.setOption(option);


});