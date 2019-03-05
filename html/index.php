<?php
include_once('./_common.php');

define('_INDEX_', true);
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

if(defined('G5_THEME_PATH')) {
    require_once(G5_THEME_PATH.'/index.php');
    return;
}

if (G5_IS_MOBILE) {
    include_once(G5_MOBILE_PATH.'/index.php');
    return;
}

include_once(G5_PATH.'/head.php');
?>
<div id="section" class="main">
    
    <a class="con con1" href="/bbs/board.php?bo_table=portfolio">
        <div class="hf">
            <div class="txt_wrap">
                <p><img src="/images/more.png" alt=""></p>
                <h2>PORTFOLIO</h2>
                <div class="line"></div>
                <h3>포트폴리오</h3>
            </div>
        </div>
    </a>
    <a class="con con2" href="/about.php">
        <div class="hf fr">
            <div class="txt_wrap">
                <p><img src="/images/more.png" alt=""></p>
                <h2>ABOUT ME</h2>
                <div class="line"></div>
                <h3>소개합니다</h3>
            </div>
        </div>
    </a>
    <a class="con con3" href="/contact.php">
        <video autoplay="autoplay" loop="loop">
            <source src="/mv/mv.mp4" data-wf-ignore="">
        </video>
        <div class="hf">
            <div class="txt_wrap">
                <p><img src="/images/more.png" alt=""></p>
                <h2>CONTACT</h2>
                <div class="line"></div>
                <h3>연락을 기다립니다</h3>
            </div>
        </div>
    </a>
</div>

<script type="text/javascript" src="/js/jpreloader.js"></script>
<script>
$(document).ready( function() {
	
	//calling jPreLoader
	$('body').jpreLoader({
		splashID: "#jSplash",
		loaderVPos: '52%',
        splashVPos: '20%',
		autoClose: true
	},function(){
        new Typed('#typed3', {
            strings: ['<b style="color:#e1c580">안녕하세요.</b><br><b style="color:#575757">Web Publisher</b> <b style="color:#e1c580">조찬형</b> 입니다.<br>포트폴리오 페이지에 오신걸 <b style="color:#e1c580">환영합니다.</b>'],
            startDelay: 500,
            typeSpeed: 70,
            backSpeed: 20,
            fadeOut: true,
            smartBackspace: false
          });
        
        setTimeout(function() {
        $('#typed_wrap').fadeOut(500)
        },7000)

        var $head = $('#header');
        setTimeout(function() {
            $head.addClass('on')
        },8000)
    })
});
</script>
<!--kkk-->
<?php
include_once(G5_PATH.'/tail.php');
?>