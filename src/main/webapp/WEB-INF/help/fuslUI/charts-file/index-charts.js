var index_chart_bar = echarts.init(document.getElementById('index-charts-bar'));
index_chart_bar.setOption({  
	tooltip: {
        show: true,
        trigger: 'item',
        formatter: "{c}%"
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            magicType : {show: true, type: ['line', 'bar']},
        }
    },
    calculable : true,
    legend: { 
        data:['第一组','第二组','第三组','第四组','第五组','第六组','第七组','第八组','第九组','第十组','第十一组','第十二组',]
    },
    xAxis : [
        {
            type : 'category',
            data : ['第一组','第二组','第三组','第四组','第五组','第六组','第七组','第八组','第九组','第十组','第十一组','第十二组',]
        }
    ],
    yAxis : [
        {
            type : 'value',
            name:'变化率 (%)',
            nameTextStyle: {
                //color: '#fff',
                fontSize: 12
            },
            axisLine: {
                lineStyle: {
                    color: '#c050',
                }
            },
        }
    ],
    series : [
        {
            name:'蒸发量',
            type:'bar',
            data:[5.38, 6.41, 1.8, 10, 5.06, 4.12,5.38, 6.41, 1.8, 6.3, 5.06, 4.12,],
            itemStyle: {
                normal: {
                    color: function(params) {
                        // build a color map as your need.
                        var colorList = [                          '#3256a2','#0284cc','#42b2e3','#46d9aa','#8cc152','#5ea5df','#ffb980','#07a2a4','#b6a2de','#60c0dd','#c6e579','#f4e001','#f0805a'
                        ];
                        return colorList[params.dataIndex]
                    },
                    label: {
                        show: true,
                        position: 'top',
                        formatter: '{c}%'
                    }
                }
            }
        },
    ]
});

var index_charts_pie = echarts.init(document.getElementById('index-charts-pie'));
index_charts_pie.setOption({  
	color:['#3256a2','#0284cc','#42b2e3','#46d9aa','#8cc152','#5ea5df','#f4e001'],
    tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b}: {c} ({d}%)"
    },
    legend: { 
        data:['第一组','第二组','第三组','第四组','第五组','第六组','第七组']
    },
    series: [
        {
            name:'访问来源',
            type:'pie',
            center: ['50%', '55%'],
            radius: ['40%', '70%'],
            avoidLabelOverlap: false,
            label: {
                normal: {
                    show: false,
                    position: 'center'
                },
                emphasis: {
                    show: false,
                    textStyle: {
                        fontSize: '30',
                        fontWeight: 'bold'
                    }
                }
            },
            labelLine: {
                normal: {
                    show: false
                }
            },
            data:[
                {value:335, name:'第一组'},
                {value:310, name:'第二组'},
                {value:234, name:'第三组'},
                {value:535, name:'第四组'},
                {value:900, name:'第五组'},
                {value:600, name:'第六组'},
                {value:600, name:'第七组'}
            ]
        }
    ]
});
