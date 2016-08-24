function createDoc(){
	var gerecht = $("#gerecht").val();
	var hoeveelheid = $("#hoeveelheid").val();
	var tafel = $("#tafel").val();
	var opmerkingen = $("#opmerkingen").val();
	var tijd = $("#tijd").val();
	
	var doc = {};
	
	doc.gerecht = gerecht;
	doc.hoeveelheid = hoeveelheid;
	doc.tafel = tafel;
	doc.opmerkingen = opmerkingen;
	doc.tijd = tijd;
	
	var json = JSON.stringify(doc);
	
	$.ajax({
        type : 'PUT',
        url : '../../' + gerecht + tijd,
        data : json,
        contentType : 'application/json',
        async : true,
        success : function(data){
        	$("gerecht").val('');
            $("#hoeveelheid").val('');
            $("#tafel").val('');
            $("#opmerkingen").val('');
            $("#tijd").val('');
        },
        error : function(XMLHttpRequest, textStatus, errorThrown){
            console.log(textStatus);
        }
    });
}