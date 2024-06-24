var points = 0;

function checkRadio(nameStr) {
    var radioArr = document.getElementsByName(nameStr);
    for (var i = 0; i < radioArr.length; i++) {
        if (radioArr[i].checked == true) {
            return i;
        }
    }
    return null;
}


function isValidRadio(nameStr, errorId, containerId, qNUm) {
    var res = checkRadio(nameStr);
    var radioArr = document.getElementsByName(nameStr);
    if (res == null) {
        document.getElementById(errorId).style.color = "Red";
        document.getElementById(containerId).style.backgroundColor = "Red";
        document.getElementById(errorId).innerHTML = "Please select one answer.";
        return false;
    }

    if (radioArr[res].getAttribute('class') == 'correct') {
        points++;
        document.getElementById('a' + qNUm + '_' + (res + 1)).innerHTML = 'Correct!';
    }

    else {
        document.getElementById('a' + qNUm + '_' + (res + 1)).innerHTML = 'Wrong!';
    }

    document.getElementById(containerId).style.backgroundColor = "";
    document.getElementById(errorId).innerHTML = "";
    return true;
}

function isValidText(ansId, errorId, correctAnswer) {
    var ans = document.getElementById(ansId).value;

    if (ans == "") {
        document.getElementById(errorId).style.color = "Red";
        document.getElementById(ansId).style.backgroundColor = "Red";
        document.getElementById(errorId).innerHTML = "Your String is empty - Please enter your answer";
        return false;
    }

    if (ans == correctAnswer) {
        points++;
        document.getElementById('a2_2').innerHTML = 'Correct!';
    }

    else {
        document.getElementById('a2_1').innerHTML = 'Wrong!';
    }

    document.getElementById(ansId).style.backgroundColor = "";
    document.getElementById(errorId).innerHTML = "";
    return true;
}

function isValidDropdown(lstId, errorId) {
    var lst = document.getElementById(lstId);

    if (lst.selectedIndex == 0) {
        document.getElementById(errorId).style.color = "Red";
        document.getElementById(lstId).style.backgroundColor = "Red";
        document.getElementById(errorId).innerHTML = "Please choose an answer";
        return false;
    }

    if (lst.options[lst.selectedIndex].getAttribute('class') == "correct") {
        points++;

        document.getElementById('a4_2').innerHTML = 'Correct!';
    }

    else {
        document.getElementById('a4_1').innerHTML = 'Wrong!';
    }

    document.getElementById(lstId).style.backgroundColor = "";
    document.getElementById(errorId).innerHTML = "";
    return true;
}


function checkCheckbox(nameStr) {
    var checkboxArr = document.getElementsByName(nameStr);
    var q5points = 5;
    var flag = false;
    for (i = 0; i < checkboxArr.length; i++) {
        if (checkboxArr[i].checked == true) {
            if (checkboxArr[i].getAttribute('class') == "wrong") {
                q5points--;
                document.getElementById('a5_' + (i + 1) + '_1').innerHTML = 'Wrong!';
            }
            else {
                document.getElementById('a5_' + (i + 1) + '_2').innerHTML = 'Correct!';
            }
        }
        else if (checkboxArr[i].getAttribute('class') == "correct") {
            q5points--;
            document.getElementById('a5_' + (i + 1) + '_1').innerHTML = 'Wrong!';
        }
        else {
            document.getElementById('a5_' + (i + 1) + '_2').innerHTML = 'Correct!';
        }

    }
    return q5points;

}

function isValidCheckbox(nameStr, errorId, containerId) {

    var res = checkCheckbox(nameStr)


    points += 0.2 * res;

    document.getElementById(containerId).style.backgroundColor = "";
    document.getElementById(errorId).innerHTML = "";
    return true;
}



function checkAll() {
    points = 0;
    resetAns();

    var q1 = isValidRadio('q1', 'q1Error', 'q1Container', 1),
        q2 = isValidText('q2_1', 'q2_1Error', 'reversed'),
        q3 = isValidRadio('q3', 'q3Error', 'q3Container', 3),
        q4 = isValidDropdown('q4_1', 'q4_1Error'),
        q5 = isValidCheckbox('q5', 'q5Error', 'q5Container');

    if (q1 && q2 && q3 && q4 && q5) {
        document.getElementById("points").innerHTML = points + " / 5";
        return true;
    }

    return false;
}

function resetAll() {
    points = 0;
    resetAns();

    document.getElementById('q1Container').style.backgroundColor = "";
    document.getElementById('q1Error').innerHTML = "";

    document.getElementById('q2_1').style.backgroundColor = "";
    document.getElementById('q2_1Error').innerHTML = "";

    document.getElementById('q3Container').style.backgroundColor = "";
    document.getElementById('q3Error').innerHTML = "";

    document.getElementById('q4_1').style.backgroundColor = "";
    document.getElementById('q4_1Error').innerHTML = "";

    document.getElementById('q5Container').style.backgroundColor = "";
    document.getElementById('q5Error').innerHTML = "";

    document.getElementById("points").innerHTML = "Not Sumbitted yet";

}


function resetAns() {
    document.getElementById("a1_1").innerHTML = "";
    document.getElementById("a1_2").innerHTML = "";
    document.getElementById("a1_3").innerHTML = "";
    document.getElementById("a1_4").innerHTML = "";
    document.getElementById("a1_5").innerHTML = "";
    document.getElementById("a2_1").innerHTML = "";
    document.getElementById("a2_2").innerHTML = "";
    document.getElementById("a3_1").innerHTML = "";
    document.getElementById("a3_2").innerHTML = "";
    document.getElementById("a3_3").innerHTML = "";
    document.getElementById("a3_4").innerHTML = "";
    document.getElementById("a3_5").innerHTML = "";
    document.getElementById("a4_1").innerHTML = "";
    document.getElementById("a4_2").innerHTML = "";
    document.getElementById("a5_1_1").innerHTML = "";
    document.getElementById("a5_1_2").innerHTML = "";
    document.getElementById("a5_2_1").innerHTML = "";
    document.getElementById("a5_2_2").innerHTML = "";
    document.getElementById("a5_3_1").innerHTML = "";
    document.getElementById("a5_3_2").innerHTML = "";
    document.getElementById("a5_4_1").innerHTML = "";
    document.getElementById("a5_4_2").innerHTML = "";
    document.getElementById("a5_5_1").innerHTML = "";
    document.getElementById("a5_5_2").innerHTML = "";
}
