function Message()
{

var Name=document.getElementById("Fullname").value;
var email=document.getElementById("Email").value;
var phone=document.getElementById("Phone").value;
var subject=document.getElementById("Subject").value;
var subject=document.getElementById("Message").value;
const success = document.getElementById("success");
const danger = document.getElementById("danger");
if (Name.value ==='' || email.value  === '' || phone.value ==='' || subject.value === '' || msg.value === '') {
    danger.style.display ='block';
   alert("Email Send Successfully"); 
  return false;
}
else
{
setTimeout(() => {
    Name.value = '';
    email.value ='';
    phone.value ='';
    subject.value ='';
    msg.value ='';
}, 2000);
  
success.style.display = 'block' ;
}

setTimeout(() => {
    danger.style.display ='none' ;
    success.style.display ='none' ;

} , 4000) ;