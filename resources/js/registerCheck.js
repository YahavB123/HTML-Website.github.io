// Auxiliary functions

function isAlpha(str) {
    var ch;
    for (var i = 0; i < str.length; i++) {
        ch = str.charAt(i);
        if ((ch < 'A' || ch > 'Z') && (ch < 'a'|| ch > 'z')) {

            return false;
        }
    }
    return true;
}

function isNumeral(str) {
    var ch;
    for (var i = 0; i < str.length; i++) {
        ch = str.charAt(i);
        if (isNaN(ch)) {

            return false;
        }
    }
    return true;
}

function isEmailStr(str)
{
    var badCharStr = "/[`!#$%^&*()_+\-=\[\]{};':\"\\|,<>\/?~]";

    for (var i = 0; i < badCharStr.length; i++) {
        badChr = badCharStr.charAt(i)
        if (str.indexOf(badChr) > -1) {
            return false;
        }
    }

    return true;
}

function isPasswordStr(str) {
    var chFlag = false, numFlag = false, ch;

    for (var i = 0; i < str.length; i++) {
        ch = str.charAt(i);
        if (('A' <= ch && ch <= 'Z') || ('a' <= ch && ch <= 'z')) {
            chFlag = true;
        }

        if (!isNaN(ch)) {
          
            numFlag = true;
        }
    }
    return chFlag && numFlag;
}

function checkRadio(nameStr) {
    var radioArr = document.getElementsByName(nameStr);
    for (i = 0; i < radioArr.length; i++) {
        if (radioArr[i].checked == true) {
            return true;
        }
    }
    return false;
}



// Input Validation function:


// first + last name check
function isValidName(nameType) {
    nameStr = document.getElementById(nameType + "NameId").value;
    if (nameStr == "") {
        document.getElementById(nameType + "NameError").style.color = "Red";
        document.getElementById(nameType + "NameId").style.backgroundColor = "Red";
        document.getElementById(nameType + "NameError").innerHTML = "Your String is empty - Please enter your " + nameType + " name.";
        return false;

    }
    if (nameStr.length < 2 || nameStr.length > 15) {
        document.getElementById(nameType + "NameError").style.color = "Red";
        document.getElementById(nameType + "NameId").style.backgroundColor = "Red";
        document.getElementById(nameType + "NameError").innerHTML = "Your Name should be 2-15 charcters long.";
        return false;
    }

    if (!isAlpha(nameStr)) {
        document.getElementById(nameType + "NameError").style.color = "Red";
        document.getElementById(nameType + "NameId").style.backgroundColor = "Red";
        document.getElementById(nameType + "NameError").innerHTML = "Please enter a string containing engilsh letters ONLY";
        return false;
    }


    document.getElementById(nameType + "NameId").style.backgroundColor = "";
    document.getElementById(nameType + "NameError").innerHTML = "";
    return true;
}


// date check
function isValidDate() {
    var dateStr = document.getElementById("dateId").value;

    if (dateStr == "") {
        document.getElementById("dateError").style.color = "Red";
        document.getElementById("dateId").style.backgroundColor = "Red";
        document.getElementById("dateError").innerHTML = "Your String is empty - Please enter your year of birth";
        return false;

    }

    if (!isNumeral(dateStr)) {
        document.getElementById("dateError").style.color = "Red";
        document.getElementById("dateId").style.backgroundColor = "Red";
        document.getElementById("dateError").innerHTML = "Please enter a string containing numbers ONLY";
        return false;
    }

    var dateInt = parseInt(dateStr);
    if (dateInt < 1935 || dateInt > 2023) {
        document.getElementById("dateError").style.color = "Red";
        document.getElementById("dateId").style.backgroundColor = "Red";
        document.getElementById("dateError").innerHTML = "Please enter a birth year between 1935-2023 (included)";
        return false;
    }

    document.getElementById("dateId").style.backgroundColor = "";
    document.getElementById("dateError").innerHTML = "";
    return true;
}



// email check
function isValidEmail() {
    var emailStr = document.getElementById("emailId").value;

    if (emailStr == "") {
        document.getElementById("emailError").style.color = "Red";
        document.getElementById("emailId").style.backgroundColor = "Red";
        document.getElementById("emailError").innerHTML = "Your String is empty - Please enter your email";
        return false;
    }

    if (emailStr.split("@").length != 2) {
        document.getElementById("emailError").style.color = "Red";
        document.getElementById("emailId").style.backgroundColor = "Red";
        document.getElementById("emailError").innerHTML = "Your email should contain exactly one \"@\"";
        return false;
    }

    if (emailStr.indexOf("@") == 0) {
        document.getElementById("emailError").style.color = "Red";
        document.getElementById("emailId").style.backgroundColor = "Red";
        document.getElementById("emailError").innerHTML = "Your email should not start with \"@\"";
        return false;
    }

    if (emailStr.indexOf(".") == -1) {
        document.getElementById("emailError").style.color = "Red";
        document.getElementById("emailId").style.backgroundColor = "Red";
        document.getElementById("emailError").innerHTML = "Your email should contain a dot \".\" ";
        return false;
    }

    if (!(((emailStr.lastIndexOf(".") == emailStr.length - 3) || (emailStr.lastIndexOf(".") == emailStr.length - 4)) && emailStr.lastIndexOf(".") > emailStr.indexOf("@"))) {
        document.getElementById("emailError").style.color = "Red";
        document.getElementById("emailId").style.backgroundColor = "Red";
        document.getElementById("emailError").innerHTML = "Your email should contain a dot \".\" followed by a postfix(2-3 characters) at the end";
        return false;
    }

    if (emailStr.indexOf(".") == 0) {
        document.getElementById("emailError").style.color = "Red";
        document.getElementById("emailId").style.backgroundColor = "Red";
        document.getElementById("emailError").innerHTML = "Your email should not start with a dot \".\"";
        return false;
    }

    if (!isEmailStr(emailStr)) {
        document.getElementById("emailError").style.color = "Red";
        document.getElementById("emailId").style.backgroundColor = "Red";
        document.getElementById("emailError").innerHTML = "Your email contains illegal charcters (such as special characters, excpet for \"@\")";
        return false;
    }

    document.getElementById("emailId").style.backgroundColor = "";
    document.getElementById("emailError").innerHTML = "";
    return true;
}


//password check
function isValidPassword() {
    var pwdStr = document.getElementById("pwdId").value;
    if (pwdStr == "") {
        document.getElementById("pwdError").style.color = "Red";
        document.getElementById("pwdId").style.backgroundColor = "Red";
        document.getElementById("pwdError").innerHTML = "Your String is empty - Please enter your password.";
        return false;
    }

    if (pwdStr.length < 7 || pwdStr.length > 30) {
        document.getElementById("pwdError").style.color = "Red";
        document.getElementById("pwdId").style.backgroundColor = "Red";
        document.getElementById("pwdError").innerHTML = "Your password should be 7-30 charcters long (your current password is " + pwdStr.length + " charcters long).";
        return false;
    }

    if (!isPasswordStr(pwdStr)) {
        document.getElementById("pwdError").style.color = "Red";
        document.getElementById("pwdId").style.backgroundColor = "Red";
        document.getElementById("pwdError").innerHTML = "Your password should contain at least one english letter and one digit.";
        return false;
    }

    document.getElementById("pwdId").style.backgroundColor = "";
    document.getElementById("pwdError").innerHTML = "";
    return true;
}

function isValidIdNumber() {
    var idStr = document.getElementById("idNumberId").value;
    if (idStr == "") {
        document.getElementById("idNumberError").style.color = "Red";
        document.getElementById("idNumberId").style.backgroundColor = "Red";
        document.getElementById("idNumberError").innerHTML = "Your String is empty - Please enter your ID number";
        return false;
    }

    if (!isNumeral(idStr)) {
        document.getElementById("idNumberError").style.color = "Red";
        document.getElementById("idNumberId").style.backgroundColor = "Red";
        document.getElementById("idNumberError").innerHTML = "Your ID number should contain only digits.";
        return false;
    }

    if (idStr.length != 9) {
        document.getElementById("idNumberError").style.color = "Red";
        document.getElementById("idNumberId").style.backgroundColor = "Red";
        document.getElementById("idNumberError").innerHTML = "Your ID number should be exactly 9 digits long (your current ID number is " + idStr.length + " digits long).";
        return false;
    }

    document.getElementById("idNumberId").style.backgroundColor = "";
    document.getElementById("idNumberError").innerHTML = "";
    return true;
}


// gender check
function isValidGender()
{
    if (!checkRadio("gender"))
    {
        document.getElementById("genderError").style.color = "Red";
        document.getElementById("genderId").style.backgroundColor = "Red";
        document.getElementById("genderError").innerHTML = "Please select one gender.";
        return false;
    }

    document.getElementById("genderId").style.backgroundColor = "";
    document.getElementById("genderError").innerHTML = "";
    return true;
}


// years coding check
function isValidYearsCoding() {
    var yearsCoding = document.getElementById("rangeValue").innerHTML;
    if (yearsCoding == "None") {
        document.getElementById("yearsCodingError").style.color = "Red";
        document.getElementById("yearsCodingId").style.backgroundColor = "Red";
        document.getElementById("yearsCodingError").innerHTML = "Please enter the amount of years you have been coding.";
        return false;
    }

    document.getElementById("yearsCodingId").style.backgroundColor = "";
    document.getElementById("yearsCodingError").innerHTML = "";
    return true;
}


// coding language check
function isValidCodingLanguage() {
    var codingLanguage = document.getElementById("codingLanguageId").value;
    if (codingLanguage == "") {
        document.getElementById("codingLanguageError").style.color = "Red";
        document.getElementById("codingLanguageId").style.backgroundColor = "Red";
        document.getElementById("codingLanguageError").innerHTML = "Please enter your favorite coding language.";
        return false;
    }

    document.getElementById("codingLanguageId").style.backgroundColor = "";
    document.getElementById("codingLanguageError").innerHTML = "";
    return true;
}


// check all fields
function checkAll() {
    var validFirstName = isValidName("first"),
        validLastName = isValidName("last"),
        validEmail = isValidEmail(),
        validDate = isValidDate(),
        validPassword = isValidPassword(),
        validIdNumber = isValidIdNumber(),
        validGender = isValidGender(),
        validYearsCoding = isValidYearsCoding(),
        validCodingLanguage = isValidCodingLanguage();

    return validFirstName && validLastName && validEmail && validDate && validPassword && validIdNumber && validGender && validYearsCoding && validCodingLanguage;
}


// reset all fields
function resetAll() {
    document.getElementById("firstNameId").style.backgroundColor = "";
    document.getElementById("firstNameError").innerHTML = "";

    document.getElementById("lastNameId").style.backgroundColor = "";
    document.getElementById("lastNameError").innerHTML = "";

    document.getElementById("dateId").style.backgroundColor = "";
    document.getElementById("dateError").innerHTML = "";

    document.getElementById("emailId").style.backgroundColor = "";
    document.getElementById("emailError").innerHTML = "";

    document.getElementById("pwdId").style.backgroundColor = "";
    document.getElementById("pwdError").innerHTML = "";

    document.getElementById("idNumberId").style.backgroundColor = "";
    document.getElementById("idNumberError").innerHTML = "";

    document.getElementById("genderId").style.backgroundColor = "";
    document.getElementById("genderError").innerHTML = "";

    document.getElementById("yearsCodingId").style.backgroundColor = "";
    document.getElementById("yearsCodingError").innerHTML = "";

    document.getElementById("codingLanguageId").style.backgroundColor = "";
    document.getElementById("codingLanguageError").innerHTML = "";

}


// check all login fields
function checkAllLogin() {
    var validEmail = isValidEmail(),
    validPassword = isValidPassword();

    return validEmail && validPassword;
}


// reset all login fields
function resetAllLogin() {
    document.getElementById("emailId").style.backgroundColor = "";
    document.getElementById("emailError").innerHTML = "";

    document.getElementById("pwdId").style.backgroundColor = "";
    document.getElementById("pwdError").innerHTML = "";
 }
