const logregbox =  document.querySelector('.logform');
const loginLink =  document.querySelector('.login-link');
const registerLink =  document.querySelector('.register-link');

registerLink.addEventListener('click', () => {
    logregbox.classList.add('active');
});

loginLink.addEventListener('click', () => {
    logregbox.classList.remove('active');
});

var objPeople = [
	{ // Object @ 0 index
        name: "blank",
		email: "blank",
		password: "blank"
	}

]

function getInfoAndNavigate() {
    getInfo();
    window.location.href = "Home.html";
}

function getInfo() {
	var email = document.getElementById('email').value
	var password = document.getElementById('password').value
 
    for(i = 0; i < objPeople.length; i++){
        if(email == objPeople[i].email && password == objPeople[i].password){
            console.log(email + " is logged in")
            return
        }
        
    }
    console.log("Incorrect E-Mail or Password.")
    
}

function registerUser(){
    var registername = document.getElementById('newName').value
    var registeremail = document.getElementById('newEmail').value
	var registerpassword = document.getElementById('newPassword').value
    var newUser = {
        name: registername,
        email: registeremail,
		password: registerpassword
    }
    for(i = 0; i < objPeople.length; i++){
        if(registername == objPeople[i].name){
            alert("Name is taken.")
            return
        }else if (registeremail == objPeople[i].email){
            alert("Email is link to another account.")
            return
        }else if (registerpassword.length < 8){
            alert("Password can not be less then (8) characters.")
            return    
    }
}

    objPeople.push(newUser)
    console.log(objPeople)
}