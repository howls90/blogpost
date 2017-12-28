// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var topics = []



window.onload = function() {
    document.getElementById('add_topic').onclick = function () {
    	var topic = $("#topics").val();
    	if(topic != "") {
    		topics.push(topic);
	    	$('#topics').val('');
	        $('#mylabels').append('<span class="label_min" style="margin-left:5px" >'+topic+'</span>');
    	}
    }
}


function submit_post()
{   
	$('#topics').val(topics);
   	$("#new_post").submit();
}

