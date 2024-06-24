function checkPwd(checked_id, error_id) {
    var element_checked = document.getElementById(checked_id);
    var element_error = document.getElementById(error_id);
    var value = element_checked.value;

    if (value.length < 4 || value[0] != value[value.length - 1]) {
        element_error.innerHTML = "Not valid";
    }
    else {
        element_error.innerHTML = "Excellent";
    }
}