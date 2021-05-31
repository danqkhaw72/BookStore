
$().ready(function() {
  $("#myform").validate({
    rules : {
		username : {
			required : true,
			username : true,
			remote: {
                url: "ajaxbook",
                type: "post",
                dataType: "json",
                data: {
                	bookid: function () {
                        return $("#username").val(); 
                    }
                },
                dataFilter: function (data) {  
                    if (data == "true") {
                        return false;
                    }
                    else {
                        return true;
                    }
                }
            }
		},
		password : {
			required : true,
			minlength : 6,
			maxlength : 16,
			password : true
		},
		re_password : {
			required : true,
			equalTo : "#password",
		},
		oldpassword : {
			required : true,
			minlength : 6,
			maxlength : 16,
			password : true
		},
		tel : {
			required :true,
			tel : true,
		},
		email : {
			email:true,
			maxlength :45,
		},
		qq : {
			qq : true,
		},
		addr : {
			maxlength : 95,
		},
		receiver:{
			required :true,
			maxlength :20,
			receiver:false,
		},
		contact:{
			required :true,
			tel : false,
		},
		address : {
			required :true,
			maxlength : 95,
		},
		orderremark : {
			maxlength : 200,
		}
    },
	messages : {
		username : {
			required : "Xin vui long nhap ten nguoi dung",
			remote : "Ten dang nhap da ton tai",
		},
		password : {
			required : "Xin vui long nhap mat khau",
			minlength : "Do dai mat khau khong duoc nho hon 6",
			maxlength : "Mat khau qua dai",
		},
		re_password : {
			required : "Vui long nhap lai mat khau",
			equalTo : "Mat khau khong trung nhau"
		},
		oldpassword :{
			required : "Vui long nhap mat khau",
			minlength : "Do dai mat khau khong duoc nho hon 6",
			maxlength : "Mat khau qua dai",
		},
		tel : {
			required :"Vui long nhap so dien thoai",
		},
		email : {
			email : "Vui long nhap email",
			maxlength : "Dia chi email qua dai"
		},
		addr : {
			maxlength : "Dia chi qua dai",
		},
		receiver:{
			required :"Vui long nhap ten cua ban",
			maxlength :"Ten ban qua dai",
			receiver:"Name error",
		},
		contact:{
			required :"Vui long nhap so dien thoai cua ban",
			tel : "Tel error",
		},
		address : {
			required :"Vui long nhap dia chi giao hang",
			maxlength : "Dia chi qua dai",
		},
		orderremark : {
			maxlength : "Ban da nhap qua nhieu noi dung",
		}
	},
  });
});