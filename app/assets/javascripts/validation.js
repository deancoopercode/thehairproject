function validateSubmitSignupForm() {

    var missingFields = "";

    if ($( "input[name='name']" ).val() == "") {
        missingFields += "\nName";
    }
    if ($( "input[name='gender']" ).val() == "") {
        missingFields += "\nGender";
    }
    if ($( "input[name='email']" ).val() == "") {
        missingFields += "\nEmail";
    }

    if (document.getElementById("password").value == "") {
        missingFields += "\nPassword";
    }
    if (document.getElementById("email").value == "") {
        missingFields += "\nEmail";
    }


    // if (document.getElementById("gender").value == "") {
    //     missingFields += "\ngender";
    // }

    if (missingFields == "") {
      return true;
    }
    else {
      alert("Some fields are missing: " + missingFields);
      return false;
    }

}
