//for employee


let formValidation = document.getElementById("formValidation"); 
 
formValidation.onsubmit = (event) => { 
    event.preventDefault(); 
 
    //let s = /(^[A-Za-z']{2,10})$/; 
    let name = document.getElementById('employeeid').value; 
    if (name == '') { 
        document.getElementById('namespan').innerHTML = "Please Enter Employee Id"; 
        return false; 
    } 
     else { 
        document.getElementById('namespan').innerHTML = ""; 
    } 
 
    let passPattern = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,12}$/; 
    let password = document.getElementById('pass').value; 
    if (password == '') { 
        document.getElementById('passspan').innerHTML = "Please enter password"; 
        return false; 
    } else if (!password.match(passPattern)) { 
        document.getElementById('passspan').innerHTML = "Password must contain 1 character, 1 digit, 1 special symbol, & should be 6-12 characters long"; 
        return false; 
    } else { 
        document.getElementById('passspan').innerHTML = ""; 
    } 
 
    formValidation.submit(); 
}


