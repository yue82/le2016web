function writeHtml(parts){

    $.ajax({
	url: parts + ".html",
	cache: false,
	async: false,
	success: function(html){
	    document.write(html);
	}
    });

}
