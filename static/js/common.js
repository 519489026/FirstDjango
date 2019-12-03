        var fileIndex = 1;
		function addFile()
		{
			var tdFile = document.getElementById("tdFile");
			var span = document.createElement("span");
			span.style.width = "100%";
			tdFile.appendChild(span);
			var file = document.createElement("input");
			file.type = "file";
			file.name = "uploadFile"+fileIndex;
			file.size = "20";
			file.onkeydown= function(){return false;};
			span.appendChild(file);
			var img = document.createElement("img");
			img.src = "/yhres/images/i_del.gif";
			img.style.cursor = "pointer";
			img.title = "删除附件";
			img.onclick = function(){deleteFileTemp(this)};
			span.appendChild(img);
			fileIndex++;
		}
		function clearFile(img)
		{
			var span = document.getElementById("spanUpload");
			span.removeChild(span.firstChild);
			var file = document.createElement("input");
			file.type = "file";
			file.name = "uploadFile";
			file.size = "20";
			file.className = "inputCM";
			file.onkeydown= function(){return false;};
			span.appendChild(file);
		}
		
		function deleteFileTemp(img)
		{
			var tdFile = document.getElementById("tdFile");
			var span = img.parentElement;
			tdFile.removeChild(span);
		}
		
		function deleteFile(img,filePhyName)
		{
			var contentFileSpan = document.getElementById("contentFileSpan");
			var span = img.parentElement;
			contentFileSpan.removeChild(span);
			document.getElementById("deleteFiles").value = document.getElementById("deleteFiles").value + filePhyName + "&";
		}
function checkAllBox()
{
    var f = document.forms[0];
    var checked = f.checkAll.checked;
    
	if(checked == false)
	{
		 for (i=0;i<f.elements.length;i++)
		{
			 if(f.elements[i].name=="recordCheckBox") 
				 f.elements[i].checked=false;
		}		 
         f.checkAll.checked=false;
	}
	else
	{
		for (i=0;i<f.elements.length;i++)
		{
			if(f.elements[i].name=="recordCheckBox") 
				f.elements[i].checked=true;
		}		 
		f.checkAll.checked=true;
	}
	
}
function deleteData()
{
    var allCheck = document.getElementsByName("recordCheckBox");
    var isCheck = false;
    for (i=0;i<allCheck.length;i++)
	{
	    if(allCheck[i].checked) 
	    {
	        isCheck = true;
	        break;
	    }
	}		 
	if(!isCheck)
	{
	    alert("至少选择一条数据！");
	    return false;
	}
	if(confirm("确认删除选择的数据！"))
	{
	    return true;
	}
	return false;
}
function addData(url,windowSetting)
{
    var rtVal = window.showModalDialog(url, window, windowSetting);    
    if(rtVal == null)
    {
        return false;
    }
    else {
        if (rtVal == "tijiao") {
            alert("提交成功!");
        } else {
            alert("保存成功!");
        }
//        alert("保存成功!");
        return true;
    }
}
function editData(img,url,windowSetting) 
{
    //var id = img.parentElement.hid;+ id
    var rtVal = window.showModalDialog(url , window, windowSetting);    
    if(rtVal == null)
    {
        return false;
    }
    else {
        if (rtVal == "tijiao") {
            alert("提交成功!");
        } else {
            alert("保存成功!");
        }
//        alert("保存成功!");
        return true;
    }
}

String.prototype.getBytes = function() {
    var cArr = this.match(/[^\x00-\xff]/ig);
    return this.length + (cArr == null ? 0 : cArr.length);
}