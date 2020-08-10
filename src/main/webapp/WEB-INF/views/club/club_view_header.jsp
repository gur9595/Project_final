<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal.username" var="m_id" />
</sec:authorize>
<!DOCTYPE html>
<html>
<body>

<body>
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin5" style="width:200px;">
                    <a class="navbar-brand" href="clubView.do?c_idx=${clubDTO.c_idx }">
                        <b class="logo-icon p-l-10">
                            <img src="./../resources/img/bprologo.png" height="30px" alt="마크" style="padding-left: 10px; color: #fff; -webkit-filter : opacity(.5) drop-shadow(0 0 0 white); filter :opacity(.5) drop-shadow(0 0 0 white);" />
                        </b>
                    </a>
                    
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
                </div>
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <ul class="navbar-nav float-left mr-auto">

                    </ul>
                    <ul class="navbar-nav float-right">
                        <li class="nav-item dropdown">
                           <a  class="nav-link dropdown-toggle waves-effect waves-dark" id="kakao-link-btn" 
								href="javascript:send(${clubDTO.c_idx })"> <img style="width:30px;height:30px;"
								src="//developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" />
							</a>
                        </li>
                        <li class="nav-item dropdown">
                            
                        </li>

                        <li class="nav-item dropdown">
                           
                        </li>
                        
                    </ul>
                </div>
            </nav>
        </header>
</body>

<script type="text/javascript">
	function send(c_idx) {
		//<![CDATA[
		// // 사용할 앱의 JavaScript 키를 설정해 주세요.
		Kakao.init('c7748327b5a31c74b003d0b290d08cca');
		// // 카카오링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.
		Kakao.Link.createCustomButton({
			container : '#kakao-link-btn',
			templateId : 34022,
			templateArgs : {
				'title' : '제목 영역입니다.',
				'description' : '설명 영역입니다.',
				'c_idx' : c_idx
			}
		});
		//]]>
	}
</script>
</html>