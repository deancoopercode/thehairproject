function validateSubmitSignupForm() {

    var missingFields = "";

    if (document.getElementById("name").value == "") {
        missingFields += "\nName";
    }
    if (document.getElementById("password").value == "") {
        missingFields += "\nPassword";
    }
    if (document.getElementById("email").value == "") {
        missingFields += "\nEmail";
    }
    if (document.getElementById("gender").value == "") {
        missingFields += "\ngender";
    }

    if (missingFields == "") {
      return true;
    }
    else {
      alert("Some fields are missing: " + missingFields);
      return false;
    }

}
