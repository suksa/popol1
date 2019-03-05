function chartOn(){
	//chart1
	new Chart(document.getElementById('chart1'), {
		type: 'radar', 
			data: {
				labels: ['관계지향', '위계지향', '과업지향', '혁신지향'], 
				datasets: [
					{
						label: '현재문화',
						data: [3.95, 4.44, 4.44, 2.73], 
						backgroundColor: ['rgba(233, 61, 117, 0.22)'], 
						borderColor: ['rgba(233, 61, 117, 0.7)'],
						borderWidth: 2
											},
					{
						label: '미래문화',
					data: [5.14, 3.36, 4.26, 4.03],
					backgroundColor: ['rgba(42, 117, 234, 0.22)'],
					borderColor: ['rgba(42, 117, 234, 0.7)'],
					borderWidth: 2
					}
				]
		},
		options: {
			legend: {
				display: true,
				position: 'bottom'
			}, 
			itle: {
				display: false,
				text: ''
			},
			scale: {
				ticks: {
					max: 7,
					min: 1
				},
					pointLabels: {
					fontSize: 13,
				}
			},
			layout:{
					padding: {
					left:20,
					right:20,
					top:20,
					bottom:20
				}
			}
		}
	});
	
	//chart2
	new Chart(document.getElementById('chart2'), {
			type: 'bar',
			data: {
				labels: ['관계문화', '위계문화', '과업문화', '혁신문화'],
				datasets: [
					{
						label: '현재문화',
						backgroundColor: [
								 'rgba(251, 176, 26, 0.8)',
									'rgba(17, 136, 179, 0.8)',
									'rgba(105, 211, 212, 0.8)',
									'rgba(223, 108, 41, 0.8)',
									'rgba(255, 99, 132, 0.8)',
									'rgba(54, 162, 235, 0.8)'
						],
						borderWidth:1,
						data: [3.95,4.44,4.44,2.73]
					}
				]
			},
			options: {
				legend: { display: false },
				title: {
					display: false,
					text: '현재문화'
				},
				scales: {
					yAxes: [{
							display: true,
							ticks: {
									suggestedMin: 1,
									suggestedMax: 7
							}
					}]
				},
				layout:{
					padding: {
					left:20,
					right:20,
					top:20,
					bottom:20
				}
			}
			}
	});

	//chart3
	new Chart(document.getElementById('chart3'), {
			type: 'bar',
			data: {
				labels: ['관리스타일', '리더십스타일', '전략적강조점', '성공의기준', '조직의응집요소', '조직의특성'],
				datasets: [
					{
						label: '현재문화',
						backgroundColor: [
								 'rgba(255, 212, 127, 0.6)',
									'rgba(99, 191, 224, 0.6)',
									'rgba(160, 221, 222, 0.6)',
									'rgba(222, 152, 111, 0.6)',
									'rgba(194, 227, 151, 0.6)',
									'rgba(172, 125, 219, 0.6)'
						],
						borderWidth:1,
						data: [4.91,3.73,4,3.73,3.09,4.27]
					},
					{
						label: '미래문화',
						backgroundColor: [
								 'rgba(251, 176, 26, 0.8)',
									'rgba(17, 136, 179, 0.8)',
									'rgba(81, 208, 209, 0.8)',
									'rgba(223, 108, 41, 0.8)',
									'rgba(144, 223, 41, 0.8)',
									'rgba(144, 64, 226, 0.8)'
						],
						borderWidth:1,
						data: [5.36,5.82,5.27,5.73,3.09,3.27]
					}
				]
			},
			options: {
				legend: { display: false },
				title: {
					display: true,
					text: '관계지향문화 하위요소',
					fontSize: 18
				},
				scales: {
					yAxes: [{
							display: true,
							ticks: {
									suggestedMin: 1,
									suggestedMax: 7// minimum will be 0, unless there is a lower value.
							}
					}]
			}   
			}
	});
	
	//chart4
	
	new Chart(document.getElementById('chart4'), {
			type: 'bar',
			data: {
				labels: ['관리스타일', '리더십스타일', '전략적강조점', '성공의기준', '조직의응집요소', '조직의특성'],
				datasets: [
					{
						label: '현재문화',
						backgroundColor: [
								 'rgba(255, 212, 127, 0.6)',
									'rgba(99, 191, 224, 0.6)',
									'rgba(160, 221, 222, 0.6)',
									'rgba(222, 152, 111, 0.6)',
									'rgba(194, 227, 151, 0.6)',
									'rgba(172, 125, 219, 0.6)'
						],
						borderWidth:1,
						data: [4.18,5.55,4.82,3.36,4.27,4.45]
					},
					{
						label: '미래문화',
						backgroundColor: [
								 'rgba(251, 176, 26, 0.8)',
									'rgba(17, 136, 179, 0.8)',
									'rgba(81, 208, 209, 0.8)',
									'rgba(223, 108, 41, 0.8)',
									'rgba(144, 223, 41, 0.8)',
									'rgba(144, 64, 226, 0.8)'
						],
						borderWidth:1,
						data: [3,4.45,3,3.09,3.27,3.36]
					}
				]
			},
			options: {
				legend: { display: false },
				title: {
					display: true,
					text: '위계지향문화 하위요소',
					fontSize: 18
				},
				scales: {
					yAxes: [{
							display: true,
							ticks: {
									suggestedMin: 1,
									suggestedMax: 7// minimum will be 0, unless there is a lower value.
							}
					}]
			}   
			}
	});

	
	//chart5
	new Chart(document.getElementById('chart5'), {
			type: 'bar',
			data: {
				labels: ['관리스타일', '리더십스타일', '전략적강조점', '성공의기준', '조직의응집요소', '조직의특성'],
				datasets: [
					{
						label: '현재문화',
						backgroundColor: [
								 'rgba(255, 212, 127, 0.6)',
									'rgba(99, 191, 224, 0.6)',
									'rgba(160, 221, 222, 0.6)',
									'rgba(222, 152, 111, 0.6)',
									'rgba(194, 227, 151, 0.6)',
									'rgba(172, 125, 219, 0.6)'
						],
						borderWidth:1,
						data: [4.36,3.82,5.18,5.27,4.18,3.82]
					},
					{
						label: '미래문화',
						backgroundColor: [
								 'rgba(251, 176, 26, 0.8)',
									'rgba(17, 136, 179, 0.8)',
									'rgba(81, 208, 209, 0.8)',
									'rgba(223, 108, 41, 0.8)',
									'rgba(144, 223, 41, 0.8)',
									'rgba(144, 64, 226, 0.8)'
						],
						borderWidth:1,
						data: [3.27,5.09,4.36,4.45,4.36,4]
					}
				]
			},
			options: {
				legend: { display: false },
				title: {
					display: true,
					text: '과업지향문화 하위요소',
					fontSize: 18,
					padding:10
				},
				scales: {
					yAxes: [{
							display: true,
							ticks: {
									suggestedMin: 1,
									suggestedMax: 7// minimum will be 0, unless there is a lower value.
							}
					}]
			}   
			}
	});
	
	//chart6
	new Chart(document.getElementById('chart6'), {
			type: 'bar',
			data: {
				labels: ['관리스타일', '리더십스타일', '전략적강조점', '성공의기준', '조직의응집요소', '조직의특성'],
				datasets: [
					{
						label: '현재문화',
						backgroundColor: [
								 'rgba(255, 212, 127, 0.6)',
									'rgba(99, 191, 224, 0.6)',
									'rgba(160, 221, 222, 0.6)',
									'rgba(222, 152, 111, 0.6)',
									'rgba(194, 227, 151, 0.6)',
									'rgba(172, 125, 219, 0.6)'
						],
						borderWidth:1,
						data: [2.27,2.45,2.18,3.64,3.55,2.27]
					},
					{
						label: '미래문화',
						backgroundColor: [
								 'rgba(251, 176, 26, 0.8)',
									'rgba(17, 136, 179, 0.8)',
									'rgba(81, 208, 209, 0.8)',
									'rgba(223, 108, 41, 0.8)',
									'rgba(144, 223, 41, 0.8)',
									'rgba(144, 64, 226, 0.8)'
						],
						borderWidth:1,
						data: [3.73,4.27,4.09,4.18,4,3.91]
					}
				]
			},
			options: {
				legend: { display: false },
				title: {
					display: true,
					text: '혁신지향문화 하위요소',
					fontSize: 18,
					padding:10
				},
				scales: {
					yAxes: [{
							display: true,
							ticks: {
									suggestedMin: 1,
									suggestedMax: 7// minimum will be 0, unless there is a lower value.
							}
					}]
			}   
			}
	});

}