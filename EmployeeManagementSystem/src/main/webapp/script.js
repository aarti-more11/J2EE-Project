let formValidation = document.getElementById("formValidation"); 
 
formValidation.onsubmit = (event) => { 
    event.preventDefault(); 
 
    //let s = /(^[A-Za-z']{2,10})$/; 
    let name = document.getElementById('employeeid').value; 
    if (name == '') { 
        document.getElementById('namespan').innerHTML = "Please Enter employee id"; 
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
        document.getElementById('passspan').innerHTML = "Password must contain 1 character, 1 digit, 1 special symbol, and be 6-12 characters long"; 
        return false; 
    } else { 
        document.getElementById('passspan').innerHTML = ""; 
    } 
	
	
	let emailid = document.getElementById('email').value; 
	   if (emailid == '') { 
	       document.getElementById('emailspan').innerHTML = "Please Enter email id"; 
	       return false; 
	   } 
	   else { 
	       document.getElementById('emailspan').innerHTML = ""; 
	   } 
	   
	let firstname = document.getElementById('firstname').value; 
	   if (firstname == '') { 
	       document.getElementById('firstnamespan').innerHTML = "Please Enter first name"; 
	       return false; 
	   } 
	   else { 
	       document.getElementById('firstnamespan').innerHTML = ""; 
	   } 
	   
	   let lastname = document.getElementById('lastname').value; 
	      if (lastname == '') { 
	          document.getElementById('lastnamespan').innerHTML = "Please Enter last name"; 
	          return false; 
	      } 
	      else { 
	          document.getElementById('lastnamespan').innerHTML = ""; 
	      } 
		  
		  let fullname = document.getElementById('fullname').value; 
		     if (fullname == '') { 
		         document.getElementById('fullnamespan').innerHTML = "Please Enter full name"; 
		         return false; 
		     } 
		     else { 
		         document.getElementById('fullnamespan').innerHTML = ""; 
		     } 
 
    let m = /(^[6-9]{1}[0-9]{9})$/; 
    let mobile = document.getElementById('mobile').value; 
    if (mobile == '') { 
        document.getElementById('mobilespan').innerHTML = "Please enter mobile number"; 
        return false; 
    } else if (!mobile.match(m)) { 
        document.getElementById('mobilespan').innerHTML = "Please enter number only of 10 digits"; 
        return false; 
    } else { 
        document.getElementById('mobilespan').innerHTML = ""; 
    } 
 
  
 
    formValidation.submit(); 
}
