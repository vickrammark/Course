var passwordToogle=false;

function toggle(id){
    if(document.getElementById(id).getAttribute("type")=="password"){
        document.getElementById(id).setAttribute("type","text");
        setTimeout(()=>{document.getElementById(id).setAttribute("type","password");},500);
    }
    else{
        document.getElementById(id).setAttribute("type","password");
    }
}
function sigupValidate(){
    var name=document.signup.userName.value;
    var name_matcher=/^[A-Za-z]+$/;
    var email=document.signup.userEmail.value;
    var email_matcher=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    var phoneNumber=document.signup.userNumber.value;
    var number_matcher=/^[0-9]+$/;
    var password=document.signup.userPassword.value;
    var confirmPassword=document.signup.confirmPassword.value; 
    var password_matcher=/(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/;

    if(name=='' || email=='' || phoneNumber=='' || password=='' || confirmPassword==''){
        window.alert("Fill all details");
        if(name=='')
            document.signup.userName.focus();
        else if(email=='')
            document.signup.userEmail.focus();
        else if(phoneNumber=='')
            document.signup.userNumber.focus();
        else if(password=='')
            document.signup.userPassword.focus();
        else
            document.signup.confirmPassword.focus();
        return false;
    }

    
    if(!(name.match(name_matcher))){
        alert('User Name must contain Alphabets only');
        document.signup.userName.focus();
        return false;
    }
    
    if(!(email.match(email_matcher))){
        alert('Invalid Email Format');
        document.signup.userEmail.focus();
        return false;
    }

    
    if(!(phoneNumber.match(number_matcher))){
        alert('Phone number can contain only numeric values');
        document.signup.userNumber.focus();
        return false;
    }

    if(phoneNumber.length!=10){
        alert('Phone number must be of length 10');
        document.signup.userNumber.focus();
        return false;
    }

    if(password.length>15 && password.length<8){
        alert('Password must be between 8 to 15');
        document.signup.userPassword.focus();
        return false;
    }

    if(!(password.match(password_matcher))){
        alert('Password must contain alteast one numeric digit,one lowercase and one upper case');
        document.signup.userPassword.focus();
        return false;
        
    }

    if(!(password.match(confirmPassword))){
        alert('Password and confirm password mismatch');
        document.signup.userPassword.focus();
        return false;
    }

    return true;
}