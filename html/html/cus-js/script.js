$(function () {
	//report현재문화 높이맞춤 
	var cusChange = $('.cus-change');
	var cusChangeCont = cusChange.find('.cus-cont');
	var cusChangeCul1 = cusChange.find('.cus-cul1').find('.cus-cont');
	var cusChangeCul2 = cusChange.find('.cus-cul2').find('.cus-cont');

	function culHeight() {
		var cul1Height = cusChangeCul1.find('ul').height();
		var cul2Height = cusChangeCul2.find('ul').height();
		
		if (cul1Height > cul2Height) {
			cusChangeCont.css('height', cul1Height + 'px');
		} else {
			cusChangeCont.css('height', cul2Height + 'px');
		}
	}
	culHeight();

	$(window).resize(function () {
		culHeight();
	})
})
