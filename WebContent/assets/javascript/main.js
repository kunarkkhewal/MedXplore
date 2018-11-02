// window.addEventListener("load", initEvents);

// var username;
// var emailid;
// var pwd;
// var cpwd;
// var span;
// var contactno;
// var elMsg;
// var elUsername;

// function initEvents(){
//     elMsg = document.getElementByid('feedback') ; // Get feedback element
//     elUsername = document.getElementById('userid');// Get username input
//     username = document.getElementsByName("userid");
//     emailid = document.getElementsByName("emailid")
//     pwd = document.getElementsByName("pwd");
//     cpwd = document.getElementsByName("cpwd");
//     contactno = document.getElementsByName("contactno");

//     span = document.querySelectorAll("span");

//     // username.addEventListener("blur", checkUsername);
//     emailid.addEventListener("blur", validateEmail);
//     cpwd.addEventListener("blur", validatePassword);
//     contactno.addEventListener("blur", validateContactNo);
//     elUsername.addEventListener('blur', checkUsername, false);
// }

// function checkUsername() {

//     console.log(elUsername);
//     if (elUsername.value.length < 3) { 
//     elMsg.textContent='Username must be 3 characters or more'; // Set msg
//     }
//     else { //Otherwise
//     elMsg.textContent = '';
//     }
// }

// function validatePassword(){
//     var str = pwd.value;
//     var str2 = cpwd.value;
//     if(pwd !== cpwd){
//         cpwd.innerHTML="Password didn't match";
//     }
// }

// function validateContactNo(){
//     var str = contactno.value;
//     if(str.length!=10){
//         contactno.innerHTML="Contact No must be at least of 10 digits.";
//     }
// }

// // function checkUsername(){
// //     var str = username.value;
// //     if(str.length<1){
// //         username.innerHTML="Please enter a UserID";
// //     }
// // }

// function validateEmail() {
//     var str = emailid.value;
//     checkBlank(str,1);
//     var pattern = /([a-z | 0-9 | . | _ | -])\w+[@]\w+[.]\w{2,3}/;
//     if(pattern.test(str)) {
//         emailid.innerHTML = "valid";
//         emailid.style.color = "green";
//     }
//     else {
//         emailid.innerHTML = "invalid";
//         emailid.style.color = "red";
//     }
// }

// function checkBlank(text, index){
//     // if(str == "" || str.length <= 0) {
//     //     span[0].innerHTML = "Please fill this";
//     // }
//     // else {
//     //     span[0].innerHTML = "";
//     // }

//     if(isEmpty(text)) {
//         span[index].innerHTML = "Please fill this";
//     }
//     else {
//         span[index].innerHTML = "";
//     }
// }

// function isEmpty(str) {
//     return (str == undefined || str == 0 || str == "") ? true : false;
// }



function checkUsername() {
    var str = username.value;
    if (str.length < 1) {
        username.innerHTML = "Please enter a UserID";
    }
}