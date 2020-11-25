<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOMEDICINE:::회원관리</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">    
    <link rel="stylesheet" href="css/userdetail.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/all.css" />
    
</head>
<body>
    <div class="container">
        <h3><b>회원 정보 관리</b></h3><p>

    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
            <div class="row register-form">
                <div class="col-md-6">                    
                    <div class="form-group">
                        이름
                        <input type="text" class="form-control" placeholder="" value="" />
                    </div>
                    <div class="form-group">
                        비밀번호
                        <input type="password" class="form-control" 
                        placeholder="" value="" />
                    <div class="form-group">
                        비밀번호 확인
                        <input type="password" class="form-control"  placeholder="" value="" />                                        </div>
                    </div>
                    <div class="form-group">
                        생년월일
                        <input type="date" class="form-control" placeholder=" *" value="" />
                    </div>
                    <div class="form-group">
                        이메일
                    <input type="email" class="form-control" placeholder="" value="" />
                </div>                        
                </div>
                <div class="col-md-6">
                    
                   
                    <div class="form-group">
                        전화번호
                        <input type="text" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="" value="" />
                    </div>
                    <div class="form-group">
                        우편번호
                        <input type="text" class="form-control" placeholder="" value="" />
                    </div>
                    <div class="form-group">
                      <input type="submit" class="btnSearch"  value="주소검색"/>
                    </div>
                    <div class="form-group">
                        상세주소
                        <input type="text" class="form-control" placeholder="" value="" />
                    </div>  
                    <div class="form-group">
                        프로필이미지
                        <input type="file"" class="form-control" placeholder="" value="" />
                    </div>      
                 </div>                                    
                 <input type="submit" class="btnModify"  value="회원차단"/>  <input type="submit" class="btnDelete"  value="회원삭제"/>
            </div>
        </div>
    </div>
</div>
</body>
</html>