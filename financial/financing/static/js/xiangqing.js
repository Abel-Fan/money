let share=$(".imgR");
let bg=$(".bg");
share.click(function(){
    bg.css("display", "block")
    bg.css("height", "13.34rem")
})
let nav=$("nav li")
let img=$(".gap img")
let pointL=$(".pointL");
let pointR=$(".pointR");
nav.click(function(){
    let index1 = $(this).index();
    pointL.css("background", "#4790f1")
        .eq(index1)
        .css("background", "#b5cdff")
    pointR.css("background", "#4790f1")
        .eq(index1)
        .css("background", "#b5cdff")
    nav.removeClass("holder")
        .eq(index1)
        .addClass("holder");
    img.css("z-index", "5")
        .eq(index1)
        .css("z-index", "10")
});
$(".button").click(function(){
    location.assign("/buy")
});
$(".bg").click(function () {
    $(".bg").css("display","none")
})