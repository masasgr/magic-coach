/* ----------------

# Do set directry as opening file.

---------------- */
/* ready include */
document.write("<script type='text/javascript' src='../controll/js/controll.js'></script>");

/* eventhandlers and functions */
$(function(){
    $('#text').on('change', function AjaxTextChangeUnit(){
		var url = '../controll/main.php';
		var datas = { 'text_name':TextChangePutValueText('text') };
		var slu_data = AjaxPost(url, datas);
		slu_data.done(function(data){
			var serializations_codes = data.serializations_code;
			var lessons = data.lesson;
			var unit_ps = data.unit_p;
			var slu_datas = {
				'serializations_codes':serializations_codes,
				'lessons':lessons,
				'unit_ps':unit_ps
			};
			var select = document.getElementById('unit');
			while(select.firstChild){
				select.removeChild(select.firstChild);
			}
			var i = 0;

			var lesson_short = slu_datas.lessons.filter(function(value, index, self){
				return self.indexOf(value) === index;
			});

			for(var i=0;i<lesson_short.length;i++){
				var option = document.createElement('option');
				var option_inner = lesson_short[i];
				// option.setAttribute("value", slu_datas.serializations_codes[i]);
				option.setAttribute("value", option_inner);
				option.innerHTML = option_inner;
				select.appendChild(option);
			}

		}).fail(function(xhr, status, error){
			var err_message = 'fail';
			console.log(err_message);
			// console.log(xhr.responseText);
		});
	});
});




