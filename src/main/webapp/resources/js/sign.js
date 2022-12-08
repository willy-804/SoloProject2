
const signUpBtn = document.getElementById("signUp");
const signInBtn = document.getElementById("signIn");
const container = document.querySelector(".container");

signUpBtn.addEventListener("click", () => {
  container.classList.add("right-panel-active");
});
signInBtn.addEventListener("click", () => {
  container.classList.remove("right-panel-active");
});


window.addEventListener('load', function() {
	var signup = $("#signup");
	signup.attr("type", "button");
	signup[0].addEventListener('click', function() {
		if (signup.attr('type') == 'button') {
			alert("아이디 중복확인 해주세요.");
		}
	});
});


function idCheck() {
	var idreg = /^[a-z][0-9a-z-_]{4,19}$/g;
	var id = $("#idchk").val();
	if (!idreg.test(id)) {
		alert("형식에 맞게 아이디를 입력해주세요.")
		return false;
	}
	$.ajax({
		type : 'post',
		url : "/idcheck",
		data : {
			"id" : id
		},
		dataType : "json",
		success : function(data) {
			if (data == 1) {
				alert("중복된 아이디 입니다.");
			} else {
				alert("사용가능한 아이디 입니다.");
				$("#signup").attr("type", "submit");
			}
		}
	});
}


function jsSubmit() {
	var idreg = /^[a-z][0-9a-z-_]{4,19}$/g;
	var pwreg = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
	
	var emreg = /^[A-Za-z0-9_\.\-]/;

	var idValue = $("#idchk").val();
	var pwValue = $("#pwchk").val();
	var reValue = $("#rechk").val();
	var nickValue = $("#nickname").val();
	var nameValue = $("#name").val();
	var emailValue = $("#email").val();

	if (nameValue == '') {
		alert("이름을 입력해주세요.");
		return false;
	}
	;
	if (!idreg.test(idValue)) {
		alert("아이디를 중복확인 해주세요.");
		return false;
	}
	;
	if (!pwreg.test(pwValue)) {
		alert("비밀번호를 알맞게 입력해주세요.");
		return false;
	}
	;
	if (!(pwValue == reValue)) {
		alert("비밀번호를 재확인 해주세요.");
		return false;
	}
	;
	if (!emreg.test(emailValue)) {
		alert("이메일을 알맞게 입력해주세요.");
		return false;
	}
	;
	
	if (nickValue == '') {
		alert("닉네임를 알맞게 입력해주세요.");
		return false;
	}
	;
	
	alert("가입이 완료 되었습니다.");
	return true;
	;
};


// Naver 로그인
var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "3nqHMokoTNAD87u8Wu4I", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
			callbackUrl: "http://localhost:8080/", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
			isPopup: false,
			callbackHandle: true
		}
	);	

naverLogin.init();

window.addEventListener('load', function () {
	naverLogin.getLoginStatus(function (status) {
		if (status) {
			var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
    		
			console.log(naverLogin.user); 
    		
            if( email == undefined || email == null) {
				alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
				naverLogin.reprompt();
				return;
			}
		} else {
			console.log("callback 처리에 실패하였습니다.");
		}
	});
});


var testPopUp;
function openPopUp() {
    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
}
function closePopUp(){
    testPopUp.close();
}

// 근데 네이버 로그아웃은 로그아웃 하는데에다 할 꺼 아니냐 
function naverLogout() {
	openPopUp();
	setTimeout(function() {
		closePopUp();
		}, 1000);		
}


// 카카오 로그인
Kakao.init('717f69fbfcf17db0e4d0a15b4885a697'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단

function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }


// 카카오 로그아웃 얘도 마찬가지 아니냐 
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  


// 구글 로그인 
//처음 실행하는 함수
function init() {
	gapi.load('auth2', function() {
		gapi.auth2.init();
		options = new gapi.auth2.SigninOptionsBuilder();
		options.setPrompt('select_account');
      // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
		options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
      // 인스턴스의 함수 호출 - element에 로그인 기능 추가
      // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
		gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
	})
}


function onSignIn(googleUser) {
	var access_token = googleUser.getAuthResponse().access_token
	$.ajax({
  	  // people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
		url: 'https://people.googleapis.com/v1/people/me'
      // key에 자신의 API 키를 넣습니다.
		, data: {personFields:'birthdays', key:'AIzaSyC28Li_eI2tyeiQ7T9tY4q6aJN4SHt3Klk', 'access_token': access_token}
		, method:'GET'
	})
	.done(function(e){
      //프로필을 가져온다.
		var profile = googleUser.getBasicProfile();
		console.log(profile)
	})
	.fail(function(e){
		console.log(e);
	})
}


function onSignInFailure(t){		
	console.log(t);
}
