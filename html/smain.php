<?php
include_once('./_common.php');

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
    <script>eft();</script>
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

<?php
include_once(G5_PATH.'/tail.php');
?>