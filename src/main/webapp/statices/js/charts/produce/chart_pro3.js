/**
 * Created by Administrator on 2020\5\20 0020.
 */
$(function () {
    //
    var chart1 = echarts.init(document.getElementById('chart_pro3'));

    var url1 = $("#path").val()+'/chart/getPro3';
    //2
    var labelTop = {
        normal : {
            label : {
                show : true,
                position : 'center',
                formatter : '{b}',
                textStyle: {
                    baseline : 'bottom'
                }
            },
            labelLine : {
                show : false
            }
        }
    };
    var labelFromatter = {
        normal : {
            label : {
                formatter : function (params){
                    return 100 - params.value + '%'
                },
                textStyle: {
                    baseline : 'top'
                }
            }
        }
    };
    var labelBottom = {
        normal : {
            color: '#ccc',
            label : {
                show : true,
                position : 'center'
            },
            labelLine : {
                show : false
            }
        },
        emphasis: {
            color: 'rgba(0,0,0,0)'
        }
    };
    var radius = [40, 55];

    $.ajax({
        url:url1,
        type:'post',
        dataType:'json',
        success:function (r) {
            var data = r[0];
            var other = r[1];
            console.log(data);
            console.log(other);
            var option = {
                legend: {
                    x : 'center',
                    y : 'center',
                    data:[
                        'M001','M002','M003','M004','M005'
                    ]
                },
                title : {
                    text: '各机种季度生产进度分析',
                    subtext: 'from woxiabiande',
                    x: 'center'
                },
                toolbox: {
                    show : true,
                    feature : {
                        dataView : {show: true, readOnly: false},
                        magicType : {
                            show: true,
                            type: ['pie', 'funnel'],
                            option: {
                                funnel: {
                                    width: '20%',
                                    height: '30%',
                                    itemStyle : {
                                        normal : {
                                            label : {
                                                formatter : function (params){
                                                    return 'other\n' + params.value + '%\n'
                                                },
                                                textStyle: {
                                                    baseline : 'middle'
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        },
                        restore : {show: true},
                        saveAsImage : {show: true}
                    }
                },
                series : [
                    {
                        type : 'pie',
                        center : ['10%', '30%'],
                        radius : radius,
                        x: '0%', // for funnel
                        itemStyle : labelFromatter,
                        data : [
                            {name:'other', value:other[0], itemStyle : labelBottom},
                            {name:'M001', value:data[0],itemStyle : labelTop}
                        ]
                    },
                    {
                        type : 'pie',
                        center : ['30%', '30%'],
                        radius : radius,
                        x:'20%', // for funnel
                        itemStyle : labelFromatter,
                        data : [
                            {name:'other', value:other[1], itemStyle : labelBottom},
                            {name:'M002', value:data[1],itemStyle : labelTop}
                        ]
                    },
                    {
                        type : 'pie',
                        center : ['50%', '30%'],
                        radius : radius,
                        x:'40%', // for funnel
                        itemStyle : labelFromatter,
                        data : [
                            {name:'other', value:other[2], itemStyle : labelBottom},
                            {name:'M003', value:data[2],itemStyle : labelTop}
                        ]
                    },
                    {
                        type : 'pie',
                        center : ['70%', '30%'],
                        radius : radius,
                        x:'60%', // for funnel
                        itemStyle : labelFromatter,
                        data : [
                            {name:'other', value:other[3], itemStyle : labelBottom},
                            {name:'M004', value:data[3],itemStyle : labelTop}
                        ]
                    },
                    {
                        type : 'pie',
                        center : ['90%', '30%'],
                        radius : radius,
                        x:'80%', // for funnel
                        itemStyle : labelFromatter,
                        data : [
                            {name:'other', value:other[4], itemStyle : labelBottom},
                            {name:'M005', value:data[4],itemStyle : labelTop}
                        ]
                    }
                ]
            };

            //
            chart1.setOption(option);

        }
    });




});