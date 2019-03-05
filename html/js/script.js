function eft(){
    var $pgLoad = $('#pg_load');
    $(document).ready(function(){
        $pgLoad.show();
    })
    $(window).load(function(){
        $pgLoad.fadeOut(600,function(){
             setTimeout(function() {
                $('#typed_wrap').fadeOut(0)
            },0)

            var $head = $('#header');
            setTimeout(function() {
                $head.addClass('on')
            },100)
        })
    })
}