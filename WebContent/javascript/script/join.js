var isSubmit = false;

//아이디 중복검사
	$(function() {
		$('#id').bind('keyup', function(e) {
			if ($('#id').val().length > 8) {
				alert('아이디는 8자 이내로 입력 가능합니다.');
				$('#id').val($('#id').val().substr(0, 8));
			} 
		});
		
		$("#id").change(function() {
			$.get("Joinduplicate.jsp", { "id": $(this).val() }, function(data) {
				var obj = jQuery.parseJSON(data);
				var obj2 = /^[a-z A-Z 0-9]{6,8}$/;
				console.log(obj[0]);
				if(obj2.test($('#id').val()) != true) {
					$("#LoginCheck").html("<span style='color: red;'>아이디는 6~8자리로 입력하세요.</span>");
					isSubmit = false;
				} else if (obj[0] == true) {
					$("#LoginCheck").html("<span style='color: red;'>사용중인 아이디 입니다.</span>");
					$("#joinbutton").addClass("d-none");
				} else {
					$("#LoginCheck").html("<span style='color: green;'>사용가능한 아이디입니다.</span>");
					$("#joinbutton").addClass("d-none");
					isSubmit = true;
				}
			});
		});
    }); 
		
// 특문, 한글 제한
    $(document).ready(function(){
        $("#id").on("focusout", function() {
			var krban = /[ㄱ-ㅎㅏ-ㅣ가-힣 !@#$%&*()=+'"~*]/gi;
            var x = $(this).val();
            if (x.length > 0) {
                if (x.match(krban)) {
                    x = x.replace(krban, "");
                }
                $(this).val(x);
            }
       });
	});
	
//회원가입 버튼
	function join() {
		if(!isSubmit) {
			alert("아이디를 확인해주세요");
		} else if (joinForm.pw.value=="" || joinForm.name.value=="" || 
					joinForm.email.value=="" || joinForm.phone.value=="") {
			alert("필수입력란을 확인해주세요");
		}else {
			document.joinForm.submit();
		}
	}
	

//비밀번호 일치 여부
	$(function() {
		$('#alert-success').hide();
		$('#alert-danger').hide();
		$('input').keyup(function() {
			var pwd1 = $('#pwd1').val();
			var pwd2 = $('#pwd2').val();
			if (pwd1 != "" || pwd2 != "") {
				if (pwd1 == pwd2) {
					$('#alert-success').show();
					$('#alert-danger').hide();
					$('#submit').removeAttr("disabled");
				} else {
					$('#alert-success').hide();
					$('#alert-danger').show();
					$('#submit').attr('disabled', "disabled");
				}
			}
		});
	})

