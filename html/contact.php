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

<div id="section" class="contact">
    
    <script>eft();</script>
    
    <div class="cont">
        <div class="con1 con">
            <form name="fwrite" method="post" onSubmit="return submitChk(this)">
                <input type=hidden name="sca" value="<?=$sca?>">
                <h2>CONTACT</h2>
                <p>연락이 어려우시면 아래 폼을 이용해주세요. (확인이 다소 늦을 수 있습니다)</p>
                <input type="text" placeholder="이름을 입력해 주세요" name="wr_name" required>
                <input type="text" placeholder="핸드폰번호를 입력해 주세요" name="wr_2" required>
                <input type="text" placeholder="제목을 입력해 주세요" name="wr_3" required>
                <textarea name="wr_content" required id="wr_content" placeholder="내용을 입력해 주세요"></textarea>
                <input type="submit" value="보내기">
            </form>
        </div>
        <div class="con2 con">
            <video autoplay="autoplay" loop="loop">
                <source src="/mv/mv2.mp4" data-wf-ignore="">
            </video>
        </div>
    </div>
    
</div>
<script language="javascript">
    function submitChk(f)
    {
    f.action = "form_ok.php";
    return true;
    }
</script>

<?php
include_once(G5_PATH.'/tail.php');
?>