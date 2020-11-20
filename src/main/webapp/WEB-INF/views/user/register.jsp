<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOMEDICINE:::회원가입</title>
    <link rel="stylesheet" href="css/register_styles.css" />
    <link rel="stylesheet" href="css/all.css" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>   
    <link rel="stylesheet" href="css/style.css" />

</head>
<body>
<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>HOMEDICINE</h3>
                        <a href="login.do"><input type="submit" name="login" value="이미 가입하셨나요?""/></a><br/>
                    </div>
                    <div class="col-md-9 register-right">                        
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade active show" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">회원가입</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            아이디
                                            <input type="text" id="ID" class="form-control" placeholder="ID" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="submit" class="btnSearch"  value="중복확인"/>
                                          </div>
                                        <div class="form-group">
                                            비밀번호
                                            <input type="password" id="password" class="form-control" placeholder="Password" value="" />
                                        </div>
                                        <div class="form-group">
                                            비밀번호 확인
                                            <input type="password" id="re-password" class="form-control"  placeholder="Confirm Password" value="" />                                        </div>
                                        <div class="form-group">
                                            이름
                                            <input type="text" class="form-control" placeholder="Name" value="" />
                                        </div>
                                        <div class="form-group">
                                            생년월일
                                            <input type="date" class="form-control" placeholder="" value="" />
                                        </div>                                        
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            전자메일
                                            <input type="email" class="form-control" placeholder="Email *" value="" />
                                        </div>
                                        <div class="form-group">
                                            연락처('-'를 제외하고 입력해주세요.)
                                            <input type="text" minlength="10" maxlength="11" name="txtEmpPhone" class="form-control" placeholder="TEL" value="" />
                                        </div>
                                        <div class="form-group">
                                            주소입력<br>
                                            <input type="text" name="" minlength="5" maxlength="5" class="postcodify_postcode5" placeholder="우편번호" value="" />
                                            <input type="submit" id="postcodify_search_button" class="btnSearch" value="주소검색"><br>                                            
                                            <input type="text" name="" id="address" class="postcodify_address" placeholder="주소" value="" /><br>
                                            <input type="text" name="" id="address_detail" class="postcodify_details" placeholder="나머지 주소 입력" value="" />
                                        </div>
                                        <div class="form-group">
                                              프로필이미지
                                             <input type="file"" class="form-control" placeholder="" value="" />
                                            </div>     
                                            <div class="form-group">
                                                <input type="submit" id="btn_save" class="btnRegister"  value="가입하기"/>
                                            </div>
                                     </div>                                    
                                </div>                            
                        </div>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>
            <script>
                const id_check=function(ID) {
                    
                    if(ID==="") {
                        $("div#msg_ID").css("display", "block")
                        $("div#msg_ID span").css("color", "red")
                        $("div#msg_ID span").text("ID를 입력해주세요")
                        $("#ID").focus()
                        
                        return false
                    }
                    
                    $.ajax({
                        url : "${rootPath}/member/id_check",
                        method : "POST",
                        data : {"ID" : ID},
                        beforeSend : function(ax) {
                            ax.setRequestHeader ("${_csrf.headerName}", "${_csrf.token}")
                        },
                        success : function(result) {
                            $("div#msg_ID").css("display", "block")
                            if(result==="OK") {
                                //alert("사용 가능한 ID입니다")
                                $("div#msg_ID span").text("사용 가능한 ID입니다")
                                $("div#msg_ID span").css("color", "black")
                                $("#password").focus()
                            } else {
                                //alert("사용할 수 없는 ID입니다")
                                $("div#msg_ID span").text("사용할 수 없는 ID입니다")
                                $("div#msg_ID span").css("color", "red")
                                $("#ID").focus()
                            }
                        },
                        error : function() {
                            alert("서버 통신 오류")
                        }
                    })
                }
                $(function() {
                    $("#btn_save").click(function() {
                        let ID=$("#ID").val()
                        let password=$("#password").val()
                        let re_password=$("#re_password").val()
                        
                        if(ID==="") {
                            alert("사용자 이름을 입력한 후 중복검사를 수행하세요")
                            $("#ID").focus()
                            
                            return false
                        }
                        
                        if(password==="") {
                            alert("비밀번호를 입력해주세요")
                            $("#password").focus()
                            
                            return false
                        }
                        
                        if(re_password==="") {
                            alert("비밀번호 재확인이 필요합니다")
                            $("#re_password").focus()
                            
                            return false
                        }
                        
                        if(password!==re_password) {
                            alert("비밀번호가 일치하지 않습니다")
                            $("#password").val("")
                            $("#re_password").val("")
                            $("#password").focus()
                            
                            return false
                        }
                        
                        $("form").submit()
                    })
                    
                    /*
                     input box의 focus()에 있다가 다른 곳으로 focus()가 이동할 때 발생하는 event
                     중복검사 버튼을 클릭하지 않아도 중복검사를 수행할 수 있도록 ID input box에 blur event를 설정
                     */
                    $("#ID").blur(function() {
                        let ID=$("#ID").val()
                        id_check(ID)
                    })
                    
                    $("#m_ID").click(function() {
                        let ID=$("#ID").val()
                        id_check(ID)
                    })
                })
            </script>
<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>

<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
            
</body>
</html>