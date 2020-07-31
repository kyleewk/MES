/**
 * Created by Administrator on 2020\5\20 0020.
 */

/*var store = '';
var remains = '';

var url2 = $("#path").val()+'/chart/getReamins';*/



/*$.ajax({
    url:url2,
    type:'post',
    dataType:'json',
    success:function (r) {
        var res = '';
        for (var i = 0; i <r.length ; i++){
            if (i <r.length - 1){
                res += r[i]+',';
            } else {
                res += r[i];
            }
        }
        remains = res;
    }
});*/

$(function () {
    //
    var chart1 = echarts.init(document.getElementById('chart_store2'));

    var url1 = $("#path").val()+'/chart/getStore';

    $.ajax({
        url:url1,
        type:'post',
        dataType:'json',
        success:function (r) {
            var store = (r[0]);
            var remains = (r[1]);
            console.log(store);
            console.log(remains);
            var option = {
                title : {
                    text: '库存使用分析',
                    subtext: 'From wozijibiande'
                },
                tooltip : {
                    trigger: 'axis',
                    axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                        type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                    },
                    formatter: function (params){
                        return params[0].name + '<br/>'
                            + params[0].seriesName + ' : ' + params[0].value + '<br/>'
                            + params[1].seriesName + ' : ' + (params[1].value - params[0].value);
                    }
                },
                legend: {
                    selectedMode:false,
                    data:['库存', '余量']
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
                        boundaryGap: [0, 0.1]
                    }
                ],
                series : [
                    {
                        name:'库存',
                        type:'bar',
                        stack: 'sum',
                        barCategoryGap: '50%',
                        itemStyle: {
                            normal: {
                                color: 'tomato',
                                barBorderColor: 'tomato',
                                barBorderWidth: 6,
                                barBorderRadius:0,
                                label : {
                                    show: true, position: 'insideTop'
                                }
                            }
                        },
                        /*data:[3200, 3800, 4800, 5500, 6900, 6600, 8500, 7200, 7500, 4200, 2800, 2000],*/
                        data:store,

                    },
                    {
                        name:'余量',
                        type:'bar',
                        stack: 'sum',
                        itemStyle: {
                            normal: {
                                color: '#fff',
                                barBorderColor: 'tomato',
                                barBorderWidth: 6,
                                barBorderRadius:0,
                                label : {
                                    show: true,
                                    position: 'top',
                                    formatter: function (params) {
                                        for (var i = 0, l = option.xAxis[0].data.length; i < l; i++) {
                                            if (option.xAxis[0].data[i] == params.name) {
                                                return option.series[0].data[i] + params.value;
                                            }
                                        }
                                    },
                                    textStyle: {
                                        color: 'tomato'
                                    }
                                }
                            }
                        },
                        /* data:[1000, 800, 800, 500, 700, 600, 500, 700, 500, 1200, 1800, 2000]*/
                        data:remains
                    }
                ]


            };

            chart1.setOption(option);
        }
    });

    //2




    //



});