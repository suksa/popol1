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

<div id="section" class="about_pg">
    
    <script>eft();</script>
    
    <div class="cti">
        <div class="con1">
            <!--audio-->
            <div id="audio_box">
                <h1>
                    <span><div class="speaker"></div>
                        <audio id="player" autoplay="" loop="" controls="">
                            <source src="/mv/bgm.mp3" type="audio/mp3">
                        </audio>
                    </span>
                </h1>
                <script type="text/javascript">    

                var autoP = $("audio");

                $("div.speaker").click(function(){
                    $(this).toggleClass("musicOn");
                     if(autoP.get(0).paused) {
                       autoP.get(0).play();
                    } else {
                       autoP.get(0).pause();
                    }
                });
                </script>
            </div>
            <!--//audio-->
            <div class="txt_box">
                <span>두바퀴로 끝에서 끝까지<img src="/images/bike_ico.png" alt=""></span>
                <h2>대한민국 국토종주</h2>
                <p>
                    2017년 7월 중순, 챙겨놨던 준비물을 다시 한번 확인하고 지도를 미리 살펴둡니다. 지난번 작성한 일정대로 이동할 수 있도록 아침 일찍 부푼 마음과 함께 집을 나섭니다. 기점인 한강이 반겨주니 저도 그에 맞춰 쭉 뻗은 자전거 도로를 달리기 시작합니다.<br>
                    <br>
                    오늘도, 내일도, 그다음 날도... 한나절을 자전거 위에서 보내는 날들이 이어지고 점점 지쳐갑니다.
                    가도 가도 줄어들지 않는 거리와 30도를 훌쩍 넘는 더위, 상황 모르고 펑크나는 바퀴, 배고픔과 안장통까지.. 한차례 자비 없는 상황 속에서 시작할 때 마음가짐은 잊어버리고 포기하고 싶다는 나약한 생각마저 들게 됩니다.<br>
                    <br>
                    하지만 완주해야 한다는 굳건한 의지를 꺾을순 없었고, 낙동강 하굿둑 인증센터를 끝으로 국토종주를 마무리합니다.<br>
                    출발하면 종점까지, 시작하면 끝까지 해내는 저는 조찬형입니다. 읽어주셔서 감사합니다.<br>
                </p>
            </div>
        </div>
        <div class="con2">
            <div class="pic1"></div>
            <div class="pic2"></div>
        </div>
        <div class="under">
            <p>
            <i class="fa fa-user-circle" aria-hidden="true"></i> 조찬형<b></b>
            <i class="fa fa-phone-square" aria-hidden="true"></i> 010-7900-5451<b></b>
            <a href="mailto:suksa_@naver.com"><i class="fa fa-envelope" aria-hidden="true"></i> suksa_@naver.com</a>
            </p>
        </div>
    </div>
    
</div>

<?php
include_once(G5_PATH.'/tail.php');
?>