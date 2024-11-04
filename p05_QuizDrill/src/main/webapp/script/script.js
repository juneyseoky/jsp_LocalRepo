$(function() {
    $("ul#mainMenu>li.mainLi").mouseover(function(){
        $("ul.subMenu").stop().fadeIn();
    });
    $("ul#mainMenu>li.mainLi").mouseout(function(){
        $("ul.subMenu").stop().fadeOut();
    });
});