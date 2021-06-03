$(function () {
    $(window).scroll(function () {
        var a = $(window).scrollTop();
        console.log(a)
        if (a > 150) {
          $(".head").addClass("ding").css({background: "rgba(255,255,255," + a / 300 + ")"})
        } else {
            $(".head").removeClass("ding").css({background: "#fff"})
        }
    })
});