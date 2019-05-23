var speed = 12; //数字越小速度越快
var step = 2; //步进
var nImgWidth = 130;
var div = document.getElementById("Mar");
var div1 = document.getElementById("Mar1");
var div2 = document.getElementById("Mar2");
div2.innerHTML = div1.innerHTML;
function Marquee() {
    //向右滚动
    //if (div.scrollLeft <= 0)
    //div.scrollLeft += div2.offsetWidth
    //else {
    //div.scrollLeft--
    //}
    //向左滚动

    if (div.scrollLeft % nImgWidth == 0) {//每一张图片就停留,如果要连续就去掉这点代码
        div.scrollLeft += step;
        step = 0;
        window.setTimeout("set(2)", 2000);

    }
    if (div2.offsetWidth - div.scrollLeft <= 0)
        div.scrollLeft -= div1.offsetWidth
    else {
        div.scrollLeft += step;
    }
}
var MyMarquee = setInterval(Marquee, speed);
div.onmouseover = function () { clearInterval(MyMarquee) };
div.onmouseout = function () { MyMarquee = setInterval(Marquee, speed) };
function set(i) {
    i = parseInt(i);
    step = i;
}