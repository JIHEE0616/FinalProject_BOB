<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="MainPage"/>
</jsp:include>
	<section>
		<div class="container">
			<div class="row align-items-center justify-content-between"> 
				<span class="text-dark h4">회원정보 입력</span>                 
			</div>
			<form name="enrollMemberFrm" action="${path}/member/enrollMemberEnd" 
                method="post" onsubmit="return fn_enrollFail();">
                <div class="form-group">
                    <label for="inputId" class="form-label mt-4">아이디<span class="obli">(필수)</span></label>
                    <span class="check" id="checkId"><small></small></span>
                    <input type="text" class="form-control" name="memberId" id="inputId" 
                        aria-describedby="emailHelp" placeholder="아이디를 입력해주세요." required maxlength="12">
                    <small class="form-text text-muted">아이디는 5~12자리 사이로 입력하세요.</small>
                </div>
                <div class="form-group has-success">
                    <label class="form-label mt-4" for="inputPwd">비밀번호<span class="obli">(필수)</span></label>
                    <input type="password" class="form-control" name="password" id="inputPwd" placeholder="비밀번호를 입력해주세요." required>
                    <small id="emailHelp" class="form-text text-muted">비밀번호는 영문자와 숫자를 각각 하나 이상 포함하여 8자리 이상 입력하세요.<br>특수문자는 포함하지 않습니다.</small>
                </div>
                <div class="form-group has-danger">
                    <label class="form-label mt-4" for="pwdCheck">비밀번호 재확인</label> 
                    <input type="password" class="form-control" name="pwdCheck" id="pwdCheck"
                        placeholder="비밀번호를 다시 한번 입력해주세요.">
                    <span class="check" id="checkPwd"><small></small></span>
                </div>
                <div class="form-group">
                    <label for="inputName" class="form-label mt-4">이름<span class="obli">(필수)</span></label>
                    <span class="check" id="checkName"><small></small></span>
                    <input type="text" class="form-control" name="mname" id="inputName"
                        placeholder="이름을 입력해주세요." required>
                </div>
                <div class="form-group">
                    <label for="inputNickname" class="form-label mt-4">닉네임<span class="obli">(필수)</span></label>
                    <span class="check" id="checkNickname"><small></small></span>
                    <input type="text" class="form-control" name="nickname" id="inputNickname"
                        placeholder="닉네임을 입력해주세요." required>
                    <small id="emailHelp" class="form-text text-muted">한글과 영문자, 숫자만 사용해 2~8자리로 입력해주세요.</small>
                </div>
                <div class ="bir_wrap">
                    <label class="form-label mt-4">생년월일<span class="obli">(필수)</span></label>
                    <span class="check" id="checkYear"><small></small></span>
                    <div class="bir_yy">
                        <span class="ps_box">
                            <input type="text" class="form-control" name="year" id="yy" 
                            placeholder="연도(4글자)" maxlength="4" required>
                        </span>
                    </div>
                    <div class="bir_mm">
                        <span class="ps_box focus">
                            <select name="month" name="month" id="month" class="custom-select">
                                <option value="01" selected="selected">1</option>
                                <option value="02">2</option>
                                <option value="03">3</option>
                                <option value="04">4</option>
                                <option value="05">5</option>
                                <option value="06">6</option>
                                <option value="07">7</option>
                                <option value="08">8</option>
                                <option value="09">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                        </span>
                    </div>
                    <div class="bir_dd">
                        <select name="day" name="day" id="day" class="custom-select">
                            <option value="01" selected="selected">1</option>
                            <option value="02">2</option>
                            <option value="03">3</option>
                            <option value="04">4</option>
                            <option value="05">5</option>
                            <option value="06">6</option>
                            <option value="07">7</option>
                            <option value="08">8</option>
                            <option value="09">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                            <option value="24">24</option>
                            <option value="25">25</option>
                            <option value="26">26</option>
                            <option value="27">27</option>
                            <option value="28">28</option>
                            <option value="29">29</option>
                            <option value="30">30</option>
                            <option value="31">31</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPhone" class="form-label mt-4">핸드폰 번호<span class="obli">(필수)</span></label>
                    <span class="check" id="checkPhone"><small></small></span>
                    <input type="text" class="form-control" name="phone" id="inputPhone" 
                    	placeholder="번호를 입력해주세요." maxlength="11" required>
                    <small id="emailHelp" class="form-text text-muted">'-'없이 입력해주세요.</small>
                </div>
                <div class="form-group">
                    <label class="form-label mt-4">성별<span class="obli">(필수)</span></label>
                </div>  
                <div class="btn-group" data-toggle="buttons">
                    <label for="gender1" class="btn btn-outline-secondary">
                        <input type="radio" class="radio" name="gender" id="gender1" value="M" checked> 남
                    </label>
                    <label for="gender2" class="btn btn-outline-secondary">
                        <input type="radio" class="radio" name="gender" id="gender2" value="F"> 여
                    </label>
                </div>      
                <div class="form-group">
                    <label for="inputEmail" class="form-label mt-4">이메일<span class="obli">(필수)</span></label>
                    <span class="check" id="checkEmail" style="color:gray;"><small>사용 가능한 이메일이면 인증 버튼이 나옵니다.</small></span>
                    <div class="email_ee address">
                        <input type="email" class="form-control" name="email" id="inputEmail"
                            placeholder="이메일을 입력해주세요." required>
                    </div>
                    <div class="bir_yy address">
                        <input id="searchAddr" name="emailconfirm_btn" type="button" value="인증" style="display:none;"
                            onclick="emailCheck();">
                    </div>
                    <span class="check" id="checkCrtfcNo"style="display:none;"><small></small></span>
                    <div class="bir_yy address crtfcNo" style="display:none;" >
                        <input type="text" class="form-control" name="inputEmail" id="crtfcNoCheck"
                            placeholder="인증번호 입력">
                    </div>
                    <div class="bir_yy address crtfcNo" style="display:none;">
                        <input id="crtfcButton" name="emailconfirm_btn" type="button" value="확인" style="margin-left:10px;height:35px;"
                            onclick="crtNoCheck();">
                    </div>
                </div>
                <div class ="addressContainer">
                    <label class="form-label mt-4">주소<span class="obli">(필수)</span></label>
                    <span class="check" id="checkAddress"><small></small></span>
                    <div class="bir_yy address">
                        <input type="text" class="form-control inputAddr"
                            name="inputAddressPostcode" id="inputAddress_postcode" placeholder="우편번호" readonly>
                    </div>
                    <div class="bir_yy address">
                        <input id="searchAddr" type="button" value="주소 검색" onclick="sample6_execDaumPostcode()">
                    </div>
                </div>
                <div class ="addressContainer">
                    <div class="bir_yy address">
                        <input type="text" class="form-control inputAddr"
                            name="inputAddressAddress" id="inputAddress_address" placeholder="주소" readonly>
                    </div>
                    <div class="bir_yy address">
                        <input type="text" class="form-control inputAddr" 
                            name="inputAddressDetailAddress" id="inputAddress_detailAddress" placeholder="상세주소">
                    </div>
                </div>
                <div class="form-group">
                    <label class="form-label mt-4">음식 취향<span class="obli">(선택)</span></label>
                </div>  
                <div class="btn-group like-food" data-toggle="buttons">
                    <label for="member-like1" class="btn btn-outline-secondary">
                        <input type="checkbox" name="vege" value="Y"> 채소
                    </label>
                    <label for="member-like2" class="btn btn-outline-secondary">
                        <input type="checkbox" name="fruit" value="Y"> 과일
                    </label>
                    <label for="member-like3" class="btn btn-outline-secondary">
                        <input type="checkbox" name="sea" value="Y"> 수산물
                    </label>
                    <label for="member-like4" class="btn btn-outline-secondary">
                        <input type="checkbox" name="meat" value="Y"> 육류
                    </label>
                    <label for="member-like5" class="btn btn-outline-secondary">
                        <input type="checkbox" name="side" value="Y"> 반찬
                    </label>
                </div><br>
                <p><small>추천 상품 목록이 나올 때 반영됩니다.</small></p>
                <div id="insert">
                    <div class="d-grid">
                        <button class="customBtn btnStyle" type="submit">
                            가입하기
                        </button>
                    </div>
                </div>
			</form>
		</div>
		<br>
	</section>
	<style>
		#searchAddr, #crtfcNoCheck{
            height: 36px;
            margin-left: 5px;
        }
        .addressContainer{
            margin: 5px;
        }
        .address{
            margin-right: 5px;
        }
        .inputAddr{
            margin-right: 5px;
        }
        #inputAddress_address{
            width: 300px;
        }
        /* 버튼 스타일 */
        .customBtn {
            color: #fff;
            border-radius: 5px;
            padding: 10px 25px;
            font-weight: 500;
            background: transparent;
            cursor: pointer;
            transition: all 0.3s ease;
            position: relative;
            display: inline-block;
            box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
            7px 7px 20px 0px rgba(0,0,0,.1),
            4px 4px 5px 0px rgba(0,0,0,.1);
            outline: none;
            min-width: 90px;
            margin: 20px;
        }
        .btnStyle {
            line-height: 40px;
            padding: 0;
            border: none;
            background: #7B52AE;
            background: linear-gradient(0deg, #7B52AE 0%, #7B52AE 100%);
        }
        .btnStyle:hover {
            color: #7B52AE;
            background: transparent;
            box-shadow:none;
        }
        .btnStyle:before,.btnStyle:after{
            content:'';
            position:absolute;
            top:0;
            right:0;
            height:2px;
            width:0;
            background: #7B52AE;
            box-shadow:
            -1px -1px 5px 0px #fff,
            7px 7px 20px 0px #0003,
            4px 4px 5px 0px #0002;
            transition:400ms ease all;
        }
        .btnStyle:after{
            right:inherit;
            top:inherit;
            left:0;
            bottom:0;
        }
        .btnStyle:hover:before,.btnStyle:hover:after{
            width:100%;
            transition:800ms ease all;
        }
        /* 중복확인 버튼 */
        #idCheck{
            font-size: small;
        }
        /* 가입하기 버튼 */
        #insert{
            display: flex;
        }
        .d-grid{
            margin: 0 auto;
        }
        /* 생년월일 */
        .bir_yy,.bir_mm,.bir_dd{
            width:160px;
            display:table-cell;
        }
        .email_ee{
            width:340px;
            display:table-cell;
        }
        .bir_mm+.bir_dd, .bir_yy+.bir_mm{
            padding-left:10px;
        }
        .text-dark{
            text-align:center;
            display:block;
            margin: 0 auto;
        }
        /* (필수) */
        span.obli{
            color: rgba(103, 103, 194, 0.685);
            font-size: small;
        }
        /* 입력창 */
        .container{
            margin: 0 auto;
            width : 503px;
            border: 1px solid lightgray;
            border-radius: 10px;
            margin-top: 50px;
            padding-top: 20px;
        }
	</style>
	<script>
		//아이디 사용 가능 여부 확인
		$("#inputId").keyup(e=>{
       		$.ajax({
       			url:"${path}/member/idDuplicateCheck?inputId="+$("#inputId").val().trim(),
       			type: "post",
       			success:data=>{
       				//console.log(data);
       				if(data!="null"){ //중복된 아이디
       					$("span#checkId>small").text("이미 존재하는 아이디입니다.").css("color","red");
       				}else if($("#inputId").val()==""){
       					$("span#checkId>small").text("아이디를 입력해주세요.").css("color","red");
       				}else if($("#inputId").val().length<5){
       					$("span#checkId>small").text("아이디는 5자리 이상 입력해주세요.").css("color","red");
       				}else if(!$("#inputId").val().trim().match(/^[A-Za-z0-9]{5,12}$/)){
       					$("span#checkId>small").text("아이디는 영문자와 숫자만 입력해주세요.").css("color","red");
       				}else{
       					$("span#checkId>small").text("사용 가능한 아이디입니다.").css("color","green");
       				}
       			}
       		})
		});
        
		//비밀번호 재확인
		$(()=>{
			$("#pwdCheck").keyup(e=>{
				const pw=$("#inputPwd").val();
				const pwck=$(e.target).val();
				if(pw==pwck){//비밀번호가 일치할 때
					if(pwck!=""){//비밀번호 재확인 칸이 비어있지 않으면
						$("span#checkPwd>small").css("color","green").text("비밀번호가 일치합니다.");                        		   
					}else{
						$("span#checkPwd>small").text(" ");
					}
				}else{//비밀번호가 불일치할 때
					if(pwck==""){//비밀번호 재확인 칸이 비어있으면
						$("span#checkPwd>small").text(" ");
					}else{
						$("span#checkPwd>small").css("color","red").text("비밀번호가 불일치합니다.");
					}
				}
			})
		});
		
		//닉네임 중복확인
		$("#inputNickname").keyup(e=>{
       		let nicknameValue=$("#inputNickname").val().trim();
			$.ajax({
       			url:"${path}/member/nicknameDuplicateCheck",
       			data:{nickname:nicknameValue},
       			success:data=>{
       				//console.log(data);
       				if(data){ //닉네임이 존재하면
       					$("span#checkNickname>small").text("이미 존재하는 닉네임입니다.").css("color","red");
       				}else if(nicknameValue==""){
       					$("span#checkNickname>small").text("닉네임을 입력해주세요.").css("color","red");
       				}else if(nicknameValue.length<2){
       					$("span#checkNickname>small").text("닉네임은 2자리 이상 입력해주세요.").css("color","red");
       				}else if(!/^[가-힣a-zA-Z0-9]{2,8}$/.test(nicknameValue)){ //닉네임이 잘못됐으면
       					$("span#checkNickname>small").text("닉네임은 한글이나 영문자, 숫자로만 작성해주세요.").css("color","red");
       				}else{
       					$("span#checkNickname>small").text("사용 가능한 닉네임입니다.").css("color","green");
       				}
       			}
       		})
		});
		
		$(()=>{
			$("#inputEmail").keyup(e=>{
				//입력한 이메일
				let email=$("#inputEmail").val().trim();
				//이메일 정규식
				//영문자나 숫자가 1개 이상 반복@영문자가 1개 이상 반복.영문자 2~3개로 끝남, 대소문자 구분 안 함
				let emailReg=/^[0-9a-zA-Z_]+@[a-zA-Z]+.[a-zA-Z]{2,3}$/i;
				if(email==""){
					$("span#checkEmail>small").text("이메일을 입력해주세요.").css("color","red");
					$("#inputEmail").focus();
					$("#searchAddr").hide();
					$("span#checkCrtfcNo").hide();
					$("div.crtfcNo").hide();
					return false;
				}
				if(!emailReg.test(email)){
					$("span#checkEmail>small").text("올바른 이메일을 입력해주세요.").css("color","red");
					$("#inputEmail").focus();
					$("#searchAddr").hide();
					$("span#checkCrtfcNo").hide();
					$("div.crtfcNo").hide();
					return false;
				}
				
				//이메일 중복확인
				$.ajax({
					url:"${path}/member/emailDuplicateCheck",
					data:{email:$("#inputEmail").val().trim()},
					type:"POST",
					success:data=>{
						console.log(data);
						if(data!="null"){
							$("span#checkEmail>small").text("이미 가입된 이메일입니다.").css("color","red");
							$("#searchAddr").hide();
							$("span#checkCrtfcNo").hide();
							$("div.crtfcNo").hide();
						}else{
							$("span#checkEmail>small").text("사용 가능한 이메일입니다.").css("color","green");
							$("#searchAddr").show();
						}
					}
				})
			})
		});

		//인증번호 초기화
		let crtfcNoData="";		
		//이메일로 인증번호 보내기		
		const emailCheck=()=>{
			//입력한 이메일
			let email=$("#inputEmail").val().trim();
			//이메일로 인증번호 전송
			$.ajax({
				type:"GET",
				url:"${path}/member/emailCheck?email="+email,
				success: function(data){
					if(data==null){
						alert("인증번호 전송에 실패하였습니다.");
						return false;
					}else{
						//인증번호를 변수에 저장
						crtfcNoData=data;
						$("span#checkCrtfcNo>small").text("인증번호를 발송했습니다. 인증번호를 입력해주세요.").css("color","#7e8cd2");
						$("span#checkCrtfcNo").show();
						$("div.crtfcNo").show();
						console.log(crtfcNoData);
					}
				}
			});
		};

		//이메일 인증 성공 여부
		let emailSuccess=false;
		//인증번호 입력 후 확인버튼 눌렀을 때
		const crtNoCheck=()=>{
			//인증번호 칸에 아무것도 입력하지 않았을 경우
			if($("#crtfcNoCheck").val().trim()==""){
				$("span#checkCrtfcNo>small").text("인증번호를 입력해주세요.").css("color","red");
				$("span#checkEmail>small").text("");
				console.log("인증번호 칸 비어있음");
			//인증번호가 틀렸을 경우
			}else if(crtfcNoData!=$("#crtfcNoCheck").val().trim()||$("#crtfcNoCheck").val().trim()==""){
				$("span#checkCrtfcNo>small").text("인증에 실패하였습니다. 다시 시도해주세요.").css("color","red");
				$("span#checkEmail>small").text("");
				console.log("인증코드 틀림");
				return false;
			//올바른 인증번호 입력
			}else if(crtfcNoData == $("#crtfcNoCheck").val().trim()){
				$("span#checkCrtfcNo>small").text("인증에 성공하였습니다.").css("color","green");
				emailSuccess=true;
			}
		}

		const fn_enrollFail=()=>{
			//아이디 사용 가능 여부
			if(!($("span#checkId>small").text().includes("가능한"))){ //아이디 사용 가능하다는 말이 없으면
				alert("아이디를 확인해주세요.");
				$("#inputId").focus();
				return false;
			}
			//비밀번호 필수입력
			const inputPwd=$("#inputPwd").val().trim();
			//숫자,영문 1개 이상씩 사용하여 8자리 이상 입력조건
			const pwdReg=/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
			if(inputPwd.match(pwdReg)==null){ //비밀번호가 양식대로 입력되지 않았으면
				alert("비밀번호는 영문자와 숫자를 각각 하나 이상 포함하여 8자리 이상 입력하세요. 특수문자는 포함하지 않습니다.");
				$("#inputPwd").focus();
				return false;
			}
			if($("span#checkPwd>small").text().includes("불")){ //비밀번호가 불일치하면 
				alert("비밀번호 재확인에 비밀번호를 정확히 적어주세요.");
				$("#pwdCheck").focus(); //다시 입력
				return false;
			}
			if($("#pwdCheck").val().trim()==""){
				alert("비밀번호 재확인에 비밀번호를 적어주세요.");
				$("#pwdCheck").focus();
				return false;
			}
			//이름 정규식 표현
			const inputName=$("#inputName").val().trim();
			const nameReg=/^[가-힣a-zA-Z][가-힣a-zA-Z]+$/;
			if(!nameReg.test(inputName)){ //이름이 잘못됐으면
				alert("이름을 확인해주세요.");
				$("span#checkName>small").text("올바른 이름을 입력해주세요.").css("color","red");
				$("#inputName").focus();
				return false;
			}else{
				$("span#checkName>small").text(" ");
			}
			//닉네임 사용 가능 여부
			if(!($("span#checkNickname>small").text().includes("가능한"))){
				alert("닉네임을 확인해주세요.");
				$("#inputNickname").focus();
				return false;
			}
			//년도 입력
			const yy=$("#yy").val().trim();
			const pattern=/^(19|20)\d{2}$/; //1900~2099년만
			if(!pattern.test(yy)){ //연도 입력이 잘못 되었으면
				alert("연도를 확인해주세요.");
				$("span#checkYear>small").text("올바른 연도를 입력해주세요.").css("color","red");
				$("#yy").focus();
				return false;
			}else{
				$("span#checkYear>small").text(" ");
			}
			//핸드폰 번호 입력
			const inputPhone=$("#inputPhone").val().trim();
			const phoneReg=/^01([0|1|6|7|8|9])([0-9]{3,4})([0-9]{4})$/; //핸드폰 번호(- 없음)
			if(inputPhone==""||phoneReg.test(inputPhone)){
				$("span#checkPhone>small").text(" ");
			}else{
				alert("핸드폰 번호를 확인해주세요.");
				$("span#checkPhone>small").text("올바른 번호를 입력해주세요.").css("color","red");
				$("#inputPhone").focus();		
				return false;
			}
			//이메일 입력
			const inputEmail=$("#inputEmail").val().trim();
			let emailReg=/^[0-9a-zA-Z_]+@[a-zA-Z]+.[a-zA-Z]{2,3}$/i;
			if(inputEmail==""){
				alert("이메일을 적어주세요.");
				$("span#checkEmail>small").text("이메일을 입력해주세요.").css("color","red");
				$("#inputEmail").focus();
				return false;
			}else{
				if(!emailReg.test(inputEmail)){
					alert("이메일을 확인해주세요.");
					$("span#checkEmail>small").text("올바른 이메일을 입력해주세요.").css("color","red");
					$("#inputEmail").focus();
					return false;
				}
			}
			//가입 가능한 이메일
			if(!($("span#checkEmail>small").text().includes("가능"))){ //가능한 이메일이라는 말이 없으면 실패
				alert("이메일을 확인해주세요.");
				$("#inputEmail").focus();
				return false;
			}
			//이메일 인증 여부 확인
			if(emailSuccess==false){
				alert("이메일 인증을 해주세요.");
				$("#inputEmail").focus();
				return false;
			}
			//주소
			if($("#inputAddress_address").val().trim()==""||$("#inputAddress_detailAddress").val().trim()==""){ //주소가 비어있으면
				alert("주소를 적어주세요.");
				$("span#checkAddress>small").text("주소를 입력해주세요.").css("color","red");
				$("#inputAddress_detailAddress").focus();
				return false;
			}else{
				$("span#checkAddress>small").text("");
			}
			//가입 여부 확인
			let apply=confirm("회원가입하시겠습니까? 가입하신 정보는 수정 가능합니다.")
			if(!apply){
				return false;
			}
		}
	</script>

	<!-- 주소 API -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function sample6_execDaumPostcode() {
			new daum.Postcode({
				oncomplete: function(data) {
					//팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
					//각 주소의 노출 규칙에 따라 주소를 조합한다.
					//내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var addr = ''; // 주소 변수
					//var extraAddr = ''; //참고항목 변수
					//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { //사용자가 도로명 주소를 선택했을 경우
						addr = data.roadAddress;
					}else { //사용자가 지번 주소를 선택했을 경우(J)
						addr = data.jibunAddress;
					}
					//우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('inputAddress_postcode').value = data.zonecode;
					document.getElementById("inputAddress_address").value = addr;
					//커서를 상세주소 필드로 이동한다.
					document.getElementById("inputAddress_detailAddress").focus();
				}
			}).open();
		}
    </script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>