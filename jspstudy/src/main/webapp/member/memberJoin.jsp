<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<HTML>
 <HEAD>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <TITLE> New Document </TITLE> 
  <script>
  function check(){  
  var fm = document.frm;   
  if (fm.memberId.value==""){
  		alert("아이디를 입력해주세요");
  		fm.memberId.focus();
  		return;
  }else if (fm.memberPwd.value==""){
  		alert("비밀번호를 입력해주세요");
  		fm.memberPwd.focus();
  		return;
  }else if (fm.memberPwd2.value==""){
  		alert("비밀번호 확인을 입력해주세요");
  		fm.memberPwd2.focus();
  		return;
  }else if (fm.memberPwd.value != fm.memberPwd2.value){
  		alert("비밀번호가 일치하지 않습니다.");
  		fm.memberPwd2.value = "";
  		fm.memberPwd2.focus();
  		return;
  }else if (fm.memberName.value==""){
  		alert("이름을 입력해주세요");
  		fm.memberName.focus();
  		return;
  }else if (fm.memberEmail.value==""){
  		alert("이메일을 입력해주세요");
  		fm.memberEmail.focus();
  		return;
  }else if (fm.memberPhone.value==""){
  		alert("연락처를 입력해주세요");
  		fm.memberPhone.focus();
  		return;
  }else if (fm.memberJumin.value==""){
  		alert("주민번호를 입력해주세요");
  		fm.memberJumin.focus();
  		return;
  }else {
  		var flag = false; 
    	for(var i=0;i<fm.memberHobby.length;i++){   
    		if(fm.memberHobby[i].checked ==true){	
    	   		flag = true;
    	   		break;
    	   	}    	
    	}  
    	
    	if (flag == false){
    		alert("한개이상 선택해주세요");
    		return;
    	}    	
  }  
  
  		alert("전송합니다..");
  		//fm.action = "./memberJoinOk.jsp";
  		//가상경로 사용
  		fm.action = "<%=request.getContextPath()%>/member/memberJoinAction.do";
  		fm.method = "post";
  		fm.submit();  
  
    return;
  }  
  </script>  
 </HEAD>

 <BODY>
<center><h1>회원가입</h1></center>
<hr></hr>
<form name="frm"> 
 <table border="1" style="text-align:left;width:800px;height:300px">
<tr>
<td>아이디</td>
<td><input type="text" name="memberId" size="30"></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type="password" name="memberPwd" size="30"></td>
</tr>
<tr>
<td>비밀번호 확인</td>
<td><input type="password" name="memberPwd2" size="30"></td>
</tr>
<tr>
<td>이름</td>
<td><input type="text" name="memberName" size="30"></td>
</tr>
<tr>
<td>이메일</td>
<td><input type="email" name="memberEmail" size="30"></td>
</tr>
<tr>
<td>성별</td>
<td>
<input type="radio" name ="memberGender" value="M" checked>남
<input type="radio" name ="memberGender" value="F">여
</td>
</tr>
<tr>
<td>지역</td>
<td><select name="memberAddr" style="width:100px;height:25px">
	<option value="전주">전주</option>
	<option value="대전">대전</option>
	<option value="서울">서울</option>
	</select>
</td>
</tr>
<tr>
<td>연락처</td>
<td>
<input type="text" name="memberPhone" size="30">
</td>
</tr>
<tr>
<td>주민번호</td>
<td><input type="number" name="memberJumin" size="30">	
</td>
</tr>

<tr>
<td>취미</td>
<td>
<input type="checkbox" name ="memberHobby" value="축구" checked>축구
<input type="checkbox" name ="memberHobby" value="농구">농구
<input type="checkbox" name ="memberHobby" value="야구">야구
</td>
</tr>

<tr>
<td>확인</td>
<td>
<input type="button" value="확인" onclick="check();"> 
<input type="reset" value="리셋"> 
</td>
</tr>
 </table>
 </form>
 </BODY>
</HTML>
