
     <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
     <div id="main" style="height:400px"></div>

     <!-- ECharts单文件引入 -->
     <script src="echarts.js"></script>
     <script type="text/javascript">
        // 路径配置
        require.config({
            paths: {
                echarts: '../../Echarts/build/dist'
            }
        });

        // 使用
        require(
            [
                'echarts',
                'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
            ],
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById('main')); 
                
                var option = {

                    title : {
                        text: '[Five Year] Accumulation Fund Lending Rate (1999-2015)',
						x: 'center',
						textStyle : {
							   fontSize: '20'
  						}
                    },

                    tooltip : {
                        trigger: 'item'
                    },

                    xAxis : [
                        {
							name : 'Date',
                            type : 'category',
							axisLine : {
 							   show: true,
 							   lineStyle: {
  							      color: '#5662A6',
  							      type: 'solid',
   							      width: 2
  							      }
							},
							boundaryGap : true,
							axisLabel : {
  							   show:true,
  						 	   interval: 'auto',
  							   rotate: 45,
 							   margin: 8,
							},
                            data : ['1999.9.21', '2002.2.21', '2004.10.29', '2005.3.17', '2006.4.28', '2007.3.18', '2007.5.19', '2007.7.21', '2007.8.22', '2007.9.14', '2007.12.21', '2008.9.16', '2008.10.9', '2008.10.27', '2008.10.30', '2008.11.27', '2008.12.23', '2010.10.20', '2010.12.26', '2011.2.9', '2011.4.6', '2011.7.7', '2012.6.8', '2012.7.6', '2014.11.22', '2015.3.1', '2015.5.11', '2015.6.28', '2015.8.26', '2015.10.24']
                        }
                    ],

                    yAxis : [
                        {
							name : 'Rate(%)',
                            type : 'value',
							max : 10,
							min : 0,
							axisLine : {
 							   show: true,
 							   lineStyle: {
  							      color: '#5662A6',
  							      type: 'solid',
   							      width: 2
  							      }
							}
                        }
                    ],

                    series : [
                        {
                            name:'Accumulation Fund (%)',
                            type:'bar',
                            itemStyle: {
                                normal: {
									color : '#A6D8FF',
                                    label : {
                                        show : true,
										position: 'top' ,
                                        textStyle : {
											color : '#5662A6',
                                            fontSize : '8'
                                        }
                                    }
                                },
                                emphasis: {
									color: '#5662A6',
                                    label : {
                                        show : true,
									    position: 'top' ,
                                        textStyle : {
											color : 'rgba(0,0,0,0)',
                                            fontSize : '8'
                                        }
                                    }
                                }
                            },
                            data:[4.59, 4.05, 4.23, 4.41, 4.59, 4.77, 4.86, 4.95, 5.04, 5.22, 5.22, 5.13, 4.86, 4.59, 4.59, 4.05, 3.87, 4.05, 4.3, 4.5, 4.7, 4.9, 4.7, 4.5, 4.25, 4, 3.75, 3.5, 3.25, 3.25],
                            markPoint : {
								symbol : 'pin',
                                itemStyle: {
                                    normal: {
									    color : '#5662A6',
                                        label : {
                                            show : true
                                        }
                                    }
                                },
                                data : [
                                    {type : 'max', name: 'Max Rate'},
                                    {type : 'min', name: 'Min Rate'}
                                ]
                            }
                        }
                    ]
                };
        
                // 为echarts对象加载数据 
                myChart.setOption(option); 
            }
        );
     </script>
