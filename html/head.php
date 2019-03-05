<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

if(defined('G5_THEME_PATH')) {
    require_once(G5_THEME_PATH.'/head.php');
    return;
}

if (G5_IS_MOBILE) {
    include_once(G5_MOBILE_PATH.'/head.php');
    return;
}

include_once(G5_PATH.'/head.sub.php');
include_once(G5_LIB_PATH.'/latest.lib.php');
include_once(G5_LIB_PATH.'/outlogin.lib.php');
include_once(G5_LIB_PATH.'/poll.lib.php');
include_once(G5_LIB_PATH.'/visit.lib.php');
include_once(G5_LIB_PATH.'/connect.lib.php');
include_once(G5_LIB_PATH.'/popular.lib.php');
?>

<!-- 상단 시작 { -->
<div id="pg_load"><img src="/images/loading.gif" alt=""></div>
<div id="wrap">
    <div id="header">
        <div id="typed_wrap">
            <span id="typed3"></span>
        </div>
        <div class="head_wrap">
            <h1 id="logo"><a href="/smain.php"><img src="/images/logo.png" alt="웹퍼블리셔 조찬형 포트폴리오"></a></h1>
            <ul id="nav">
                <li><a href="/bbs/board.php?bo_table=portfolio"><i class="fa fa-folder-o" aria-hidden="true"></i><span>PORTFOLIO<b></b></span></a></li>
                <li><a href="/about.php"><i class="fa fa-user-o" aria-hidden="true"></i><span>ABOUT ME<b></b></span></a></li>
                <li><a href="/contact.php"><i class="fa fa-edit" aria-hidden="true"></i><span>CONTACT<b></b></span></a></li>
            </ul>
            <div id="qrCode"><img src="/images/qrcode.png" alt="카카오톡 친구추가 QR코드"><span>카카오톡 친구추가<br>QR코드</span></div>
            <div class="line"></div>
            <div class="copyR">
                <p>copyright ⓒ 조찬형 포트폴리오 2018<br>All Rights Reserved</p>
            </div>
        </div>
    </div>
<!-- } 상단 끝 -->