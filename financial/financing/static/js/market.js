let market=$(".market");
let section=$(".section");
let pointL=$(".pointL");
let pointR=$(".pointR");
market.click(function(){
    let index1 = $(this).index()
    pointL.css("background", "#4790f1")
        .eq(index1)
        .css("background", "#b5cdff")
    pointR.css("background", "#4790f1")
        .eq(index1)
        .css("background", "#b5cdff")
    market.removeClass("holder")
        .eq(index1)
        .addClass("holder");
    section.css("z-index", "5")
        .eq(index1)
        .css("z-index", "10")
});
$(".content").click(function () {
    location.assign("/xiangqing")
})
$("footer ul li:first-child").click(function () {
        location.assign("/index")
    })
$("footer ul li:nth-child(2)").click(function () {
    location.assign("/market")
})
$("footer ul li:nth-child(4)").click(function () {
    location.assign("/message")
})
$("footer ul li:nth-child(3)").click(function () {
        location.assign("/zixun")
})
$("footer ul li:nth-child(5)").click(function () {
        location.assign("/myindex")
})
