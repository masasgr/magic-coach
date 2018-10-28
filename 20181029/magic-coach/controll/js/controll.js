/* Ajax system */
function AjaxPost(url, datas){
	return $.ajax({
		url: url,
		type: 'POST',
		dataType: 'json',
		data: datas
	});
}

/* put system */
function TextChangePutValueText(text){
	var textvalue = document.getElementById(text).value;
	return textvalue;
}
