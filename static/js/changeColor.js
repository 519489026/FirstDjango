
function mouseMove(obj) {
    obj.style.backgroundColor = '#F33F1C';
    obj.style.color = '#FFFFFF';
}

function mouseOut(obj) {

    var checkBox = document.getElementById(obj.name);
    //alert(checkBox.checked);
    if (!checkBox.checked) {
        if (obj.id % 2 == 1) {
            obj.style.backgroundColor = "#FFFFFF";
        }
        else {
            obj.style.backgroundColor = "#F4F4F4";
        }
    }
    obj.style.color = '';
}