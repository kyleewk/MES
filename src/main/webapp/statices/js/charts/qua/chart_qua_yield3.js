/**
 * Created by Administrator on 2020\5\20 0020.
 */
/*$(function () {
    setInterval(refresh(),1000);

});*/

$(document).ready(function () {
    refresh();
    setInterval(refresh,5000);
    // refresh();
});


function chart(getRandom1,getRandom2) {
    //
    var chart1 = echarts.init(document.getElementById('chart_qua_yeild3'));
    //2
    var option = {
        title : {
            text: '产线实时监测图',
            subtext: '数据是随机哦'
        },
        tooltip : {
            trigger: 'axis'
        },
        legend: {
            data:['PCBA','SMT']
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
                data : ['1线','2线','3线','4线','5线']
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
                data:getRandom1,
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
                name:'M002',
                type:'line',
                data:getRandom2,
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

function getRandom() {
    var random = [0,0,0,0,0];
    for(var i=0;i<5;i++){
        random[i] = Math.floor(85+Math.random()*15);
    }
    return random;
}

function refresh() {
    var getRandom1 = getRandom();
    var getRandom2 = getRandom();
    chart(getRandom1,getRandom2);
    // setTimeout(1000);
    // setTimeout(refresh(),1000);
}








