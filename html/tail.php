<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

if(defined('G5_THEME_PATH')) {
    require_once(G5_THEME_PATH.'/tail.php');
    return;
}

if (G5_IS_MOBILE) {
    include_once(G5_MOBILE_PATH.'/tail.php');
    return;
}
?>

<!-- } 콘텐츠 끝 -->

<!-- 하단 시작 { -->

<!-- } 하단 끝 -->

<?php
include_once(G5_PATH."/tail.sub.php");
?>