<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<div id="headerWrap">
        <header id="header" class="dFlex">
            <div id="headerLogoArea">
                <a href="#">
                    <img src="images/logo_header.png" 
                    alt="헤더 로고 이미지" width="210">
                </a>
            </div>
            <!-- div#headerLogoArea -->

            <nav id="headerGNBArea">

               <!-- ul#mainMenu>li.mainLi*4>a[href]+ul.subMenu>li.subLi*4>a[href]{$} -->
               <ul id="mainMenu" class="dFlex">

                    <li class="mainLi">  <!-- pos:r -->

                        <a href="#">소장처별</a>
                        <ul class="subMenu">  <!-- pos:a -->
                            <li class="subLi"><a href="#">한국</a></li>
                            <li class="subLi"><a href="#">프랑스</a></li>
                            <li class="subLi"><a href="#">이탈리아</a></li>
                            <li class="subLi"><a href="#">독일</a></li>
                        </ul>

                    </li>
                    <li class="mainLi">

                        <a href="#">장르별</a>
                        <ul class="subMenu">
                            <li class="subLi"><a href="#">회화</a></li>
                            <li class="subLi"><a href="#">판화</a></li>
                            <li class="subLi"><a href="#">공예/고대유물</a></li>
                            <li class="subLi"><a href="#">그 외</a></li>
                        </ul>

                    </li>
                    <li class="mainLi">

                        <a href="#">테마별</a>
                        <ul class="subMenu">
                            <li class="subLi"><a href="#">초상화/인물</a></li>
                            <li class="subLi"><a href="#">종교</a></li>
                            <li class="subLi"><a href="#">신화/문학</a></li>
                            <li class="subLi"><a href="#">일상/스포츠</a></li>
                        </ul>

                    </li>
                    <li class="mainLi">

                        <a href="#">시대별</a>
                        <ul class="subMenu">
                            <li class="subLi"><a href="#">1900년 이전</a></li>
                            <li class="subLi"><a href="#">1900년대</a></li>
                            <li class="subLi"><a href="#">현대</a></li>
                            <li class="subLi"><a href="#">그 외</a></li>
                        </ul>

                    </li>
               </ul>


            </nav>
            <!-- nav#headerGNBArea -->

        </header>
        <!-- header#header -->
    </div>
    <!-- div#headerWrap -->