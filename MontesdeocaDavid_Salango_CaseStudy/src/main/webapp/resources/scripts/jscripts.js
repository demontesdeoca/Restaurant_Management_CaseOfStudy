function getSelectedValue() {
    var radioBtns = document.getElementsByClassName("seloption");
    for (var i = 0; i < radioBtns.length; i++) {
        if (radioBtns[i].checked) {
            document.getElementById("output").textContent = radioBtns[i].value;
        }
    }
}

function GetCellValues() {
    var table = document.getElementById('mytable');
    for (var r = 0, n = table.rows.length; r < n; r++) {
        for (var c = 0, m = table.rows[r].cells.length; c < m; c++) {
            alert(table.rows[r].cells[c].innerHTML);
        }
    }
}

function validateItemCRUD() {
    if (document.getElementById("chkdeleted").checked)
        document.getElementById("deleted").value = "Y";
    else
        document.getElementById("deleted").value = "N";

    var validF = "true";

    validF = stdElemValidation("name", "msgName", "Please enter name", validF);
    validF = stdElemValidation("description", "msgDescription", "Please enter description", validF);

    validF = stdSelValidation("type", "msgType", "Please select type", validF);
    validF = stdElemValidation("price", "msgPrice", "Please enter price", validF);
    
    if (validF == "true") {
        //alert(vName + " your Registration was succesfully made, thank you");
        return true;
    } else {
        return false;
    }
}

function saveBtn(sValue) {
    document.getElementById("savebtn").innerHTML = sValue;
}

function genericValidate() {
    if (document.getElementById("savebtn").innerText == "1") {
        return true;
    }
    var rowindex = -1;
    var radioBtns = document.getElementsByClassName("myradioption");
    for (var i = 0; i < radioBtns.length; i++) {
        if (radioBtns[i].checked) {
            rowindex = i + 1;
            break;
        }
    }
    if (rowindex <= 0) {
        alert("No record selected to perform this action. Select one record");
        return false;
    }

    var table = document.getElementById("genTable");
    document.getElementById("idRow").innerHTML = table.rows[rowindex].cells[1].innerHTML;
    document.getElementById("idRow").value = table.rows[rowindex].cells[1].innerHTML;
    return true;
}

function togglePassword(inputText, toggleIcon) {
    var vInputText;
    var vToggleIcon;
    vInputText = document.getElementById(inputText);
    vToggleIcon = document.getElementById(toggleIcon);

    // toggle the type attribute
    vInputText.type = vInputText.getAttribute("type") === "password" ? "text" : "password";
    // change icon viw/hide password
    vToggleIcon.classList.toggle("fa-eye-slash");
}

function stdEmailValidation(inputText, lblMsg, flag) {
    var vDocElement;
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    vDocElement = document.getElementById(inputText).value;
    if (vDocElement == "") {
        document.getElementById(lblMsg).innerHTML = "Please enter a valid email address";
        return false;
    } else {
        if (!vDocElement.match(mailformat)) {
            document.getElementById(lblMsg).innerHTML = "Please enter a valid email address format";
            return "false";
        } else {
            document.getElementById(lblMsg).innerHTML = "";
            return flag;
        }
    }
}

function stdElemValidation(inputText, lblMsg, msg, flag) {
    var vDocElement;
    vDocElement = document.getElementById(inputText).value;
    if (vDocElement == "") {
        document.getElementById(lblMsg).innerHTML = msg;
        return false;
    } else {
        document.getElementById(lblMsg).innerHTML = "";
        return flag;
    }
}

function stdSelValidation(selectOpt, lblMsg, msg, flag) {
    var vDocElement;
    vDocElement = document.getElementById(selectOpt).value;
    if (vDocElement == "0") {
        document.getElementById(lblMsg).innerHTML = msg;
        return false;
    } else {
        document.getElementById(lblMsg).innerHTML = "";
        return flag;
    }
}

function stdSelStateValidation(selOptState, selOptCountry, lblMsg, msg, flag) {
    var vDocElementCountry;
    var vDocElementState;
    vDocElementCountry = document.getElementById(selOptCountry).value;
    if (vDocElementCountry == "USA") {
        vDocElementState = document.getElementById(selOptState).value;
        if (vDocElementState == "0" || vDocElementState == "NA") {
            document.getElementById(lblMsg).innerHTML = msg;
            return false;
        } else {
            document.getElementById(lblMsg).innerHTML = "";
            return flag;
        }
    } else {
        document.getElementById(lblMsg).innerHTML = "";
        return flag;
    }
}

function stdPwdValidation(inputPWD, inputCPWD, lblMsg1, lblMsg2, msg, flag) {
    var vDocElementPWD;
    var vDocElementCPWD;
    if (document.getElementById(lblMsg1).innerHTML == "" && document.getElementById(lblMsg2).innerHTML == "") {
        vDocElementPWD = document.getElementById(inputPWD).value;
        vDocElementCPWD = document.getElementById(inputCPWD).value;
        if (vDocElementPWD != "" && vDocElementCPWD != "") {
            if (vDocElementPWD != vDocElementCPWD) {
                document.getElementById(lblMsg1).innerHTML = msg;
                document.getElementById(lblMsg2).innerHTML = "";
                return false;
            } else {
                return flag;
            }
        } else {
            document.getElementById(lblMsg1).innerHTML = "";
            document.getElementById(lblMsg2).innerHTML = "";
            return flag;
        }
    }
}

function validateLogInAdmin() {
    var validF = "true";

    validF = stdElemValidation("femail", "msgEmail", "Please enter your username", validF);
    validF = stdElemValidation("fPWD", "msgPWD", "Please enter your password", validF);
    if (validF == "true") {
        //alert(vName + " your Registration was succesfully made, thank you");
        return true;
    } else {
        return false;
    }
}

function validateLogIn() {
    var validF = "true";

    validF = stdEmailValidation("femail", "msgEmail", validF);
    validF = stdElemValidation("fPWD", "msgPWD", "Please enter your password", validF);
    if (validF == "true") {
        //alert(vName + " your Registration was succesfully made, thank you");
        return true;
    } else {
        return false;
    }
}

function validateSignUp() {
    var validF = "true";

    validF = stdElemValidation("fname", "msgName", "Please enter your name", validF);
    validF = stdElemValidation("flastname", "msgLastName", "Please enter your last name", validF);
    validF = stdElemValidation("fphone", "msgPhone", "Please enter your phone", validF);
    validF = stdElemValidation("fPWD", "msgPWD", "Please enter your password", validF);
    validF = stdElemValidation("fCPWD", "msgCPWD", "Please enter your password confirmation", validF);

    validF = stdPwdValidation("fPWD", "fCPWD", "msgPWD", "msgCPWD", "Password does not match your confirmation Password", validF);

    validF = stdEmailValidation("femail", "msgEmail", validF);
    validF = stdElemValidation("fphone", "msgPhone", "Please enter your phone", validF);
    validF = stdElemValidation("fDOB", "msgDOB", "Please enter your date of birth", validF);
    validF = stdSelValidation("fgender", "msgGender", "Please select your gender", validF);
    validF = stdElemValidation("faddress1", "msgAddress1", "Please enter your address", validF);
    validF = stdElemValidation("fcity", "msgCity", "Please enter your city", validF);
    validF = stdSelValidation("fcountry", "msgCountry", "Please select your country", validF);
    validF = stdSelStateValidation("fstate", "fcountry", "msgState", "Please select your state", validF);
    validF = stdElemValidation("fzip", "msgZip", "Please enter your Zip Code", validF);

    if (validF == "true") {
        //alert(vName + " your Registration was succesfully made, thank you");
        return true;
    } else {
        return false;
    }
}

function validateForm() {
    var vDocElement;
    var validF = "true";
    vDocElement = document.getElementById("fname").value;

    if (vDocElement == "") {
        document.getElementById("msgName").innerHTML = "Please enter your name";
        validF = "false";
    } else {
        document.getElementById("msgName").innerHTML = "";
    }

    vDocElement = document.getElementById("femail").value;
    if (vDocElement == "") {
        document.getElementById("msgEmail").innerHTML = "Please enter a valid email address";
        validF = "false";
    } else {
        document.getElementById("msgEmail").innerHTML = "";
    }

    vDocElement = document.getElementById("fsubject").value;
    if (vDocElement == "") {
        document.getElementById("msgSubject").innerHTML = "Please enter your subject";
        validF = "false";
    } else {
        document.getElementById("msgSubject").innerHTML = "";
    }

    vDocElement = document.getElementById("fmessage").value;
    if (vDocElement == "") {
        document.getElementById("msgMessage").innerHTML = "Please enter a message";
        validF = "false";
    } else {
        document.getElementById("msgMessage").innerHTML = "";
    }

    if (validF == "true") {
        alert("Your message was succesfully sent, thank you");
        return true;
    } else {
        return false;
    }
}

function validateFormReservation() {
    var vDocElement;
    var validF = "true";
    var vName = "";
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    vDocElement = document.getElementById("fname").value;
    vName = vDocElement;
    if (vDocElement == "") {
        document.getElementById("msgName").innerHTML = "Please enter your name";
        validF = "false";
    } else {
        document.getElementById("msgName").innerHTML = "";
    }

    vDocElement = document.getElementById("fphone").value;
    if (vDocElement == "") {
        document.getElementById("msgPhone").innerHTML = "Please enter your phone";
        validF = "false";
    } else {
        document.getElementById("msgPhone").innerHTML = "";
    }

    vDocElement = document.getElementById("femail").value;
    if (vDocElement == "") {
        document.getElementById("msgEmail").innerHTML = "Please enter a valid email address";
        validF = "false";
    } else {
        if (!vDocElement.match(mailformat)) {
            document.getElementById("msgEmail").innerHTML = "Please enter a valid email address format";
            validF = "false";
        } else {
            document.getElementById("msgEmail").innerHTML = "";
        }
    }



    vDocElement = document.getElementById("fpeople").value;
    if (vDocElement == "0") {
        document.getElementById("msgPeople").innerHTML = "Please select how many people";
        validF = "false";
    } else {
        document.getElementById("msgPeople").innerHTML = "";
    }

    vDocElement = document.getElementById("fdate").value;
    if (vDocElement == "") {
        document.getElementById("msgDate").innerHTML = "Please select date";
        validF = "false";
    } else {
        document.getElementById("msgDate").innerHTML = "";
    }

    vDocElement = document.getElementById("ftime").value;
    if (vDocElement == "0") {
        document.getElementById("msgTime").innerHTML = "Please select time";
        validF = "false";
    } else {
        document.getElementById("msgTime").innerHTML = "";
    }

    if (validF == "true") {
        alert(vName + " your Reservation was succesfully made, thank you");
        return true;
    } else {
        return false;
    }
}
