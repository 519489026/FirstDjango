function AlertSuccess(msg, dataId) {
    if (msg) {
        alert(msg);
    }
    if (dataId) {
        parent.Refresh(dataId);
    }
    var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
    parent.layer.close(index);
}


function AlertError(msg) {
    if (msg) {
        alert(msg);
    }
    var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
    parent.layer.close(index);
}
//QueryString获取
Request = {
    QueryString: function (item) {
        var svalue = location.search.match(new RegExp("[\?\&]" + item + "=([^\&]*)(\&?)", "i"));
        return svalue ? svalue[1] : svalue;
    }
}