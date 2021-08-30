function check()
{
    var email = document.getElementById("email").value;
    var pass = document.getElementById("password").value;
    var checkemail = document.getElementById("email"); 
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/; 
    if (email == "" || pass == ""){
        alert("Vui lòng điền đầy đủ các thông tin")
    }else if (pass.length < 8){
        alert("Mật khẩu phải có tối thiểu 8 kí tự")
    }else if (!filter.test(checkemail.value)) { 
             alert('Hay nhap dia chi email hop le.\nExample@gmail.com');
             checkemail.focus; 
             return false; 
    }else{
        alert('Đăng nhập thành công')
    }

}
