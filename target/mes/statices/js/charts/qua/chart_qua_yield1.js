/**
 * Created by Administrator on 2020\5\20 0020.
 */
$(function () {
    //
    var chart1 = echarts.init(document.getElementById('chart_qua_yeild1'));
    //2
    var
        option = {
            title : {
                text: '质量分析雷达图',
                subtext: '我也是编的'
            },
            tooltip : {
                trigger: 'axis'
            },
            legend: {
                orient : 'vertical',
                x : 'right',
                y : 'bottom',
                data:['今年','去年']
            },
            toolbox: {
                show : true,
                feature : {
                    mark : {show: true},
                    dataView : {show: true, readOnly: false},
                    restore : {show: true},
                    saveAsImage : {show: true}
                }
            },
            polar : [
                {
                    indicator : [
                        { text: '综合良率', max: 100},
                        { text: 'COB退货率', max: 100},
                        { text: 'PCBA退货率', max: 100},
                        { text: 'COB生产良率', max: 100},
                        { text: 'PCBA生产良率', max: 100},
                        { text: '客户怨诉件数', max: 100},
                    ]
                }
            ],
            calculable : true,
            series : [
                {
                    name: '质量分析雷达图',
                    type: 'radar',
                    data : [
                        {
                            value : [98, 99,97,94,93,95],
                            name : '今年'
                        },
                        {
                            value : [92,93,94,95,92,91],
                            name : '去年'
                        }
                    ]
                }
            ]
        };




    //
    chart1.setOption(option);


});