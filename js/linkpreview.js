/*
	TEST LINKS to paste into TEXTAREA
	Hello check out this link http://rkalika.com/
	Cute pics http://www.buzzfeed.com/babymantis/the-40-best-animal-cuddlers-of-all-time-1opu
*/

/*
	Variables for all the elements that will be used on this page.
		linkdata = linkPreview section
		form	 = form id that surrounds the textarea
		url		 = url id is the text area where you paste the text
		progress = container that holds the ajax spinner
		urlRegex = Regular Expression to parse out url strings
*/

var linkdata = $('#linkdata'),
 	form 	 = $('#form'),
  	url 	 = $('#url'),
 	progress = $('#progress'),
 	urlRegex = /(https?:\/\/[^\s]+)/g,
	proxy	 = 'ajax/proxy.cfm';

	/*
	
		Event handler for text area.  Grabs the first URL that is pasted into the textarea and
		tries to grab the title, meta description, and meta og:image or first image on the page
		to display as a link preview
	
	*/

	url.on('paste keyup', function(e) {
								   
		if (url.val() == '') {
			linkdata.addClass('hide');	
		}
		
		var urlMatches = [];
								   
		if (e.type == 'paste') {						   
			urlMatches = e.originalEvent.clipboardData.getData("text").match(urlRegex);	
		}
		else if(e.keyCode == 32) {
			urlMatches = url.val().match(urlRegex);		
		}
		var firstURL   = urlMatches.length ? urlMatches[0] : '';
	
		if (firstURL && linkdata.is(':hidden')) {
			progress.removeClass('hide');
			$.post(proxy, {url:firstURL})
				.done(function(data) {
					var results = $(data),
						title = results.filter('title').text() || results.filter('meta[name=title]').attr('content'),
						description = results.filter('meta[name=description]').attr('content');
					
					var allImages = results.filter('img');
					var myimages = allImages.filter(function() {
						return $(this)[0].width >= 50;									
					});
					myimages.each(function(i,v) {
						$(v).error(function() {$(this).remove();});				   
					});
					var images = results.filter('meta[property=og\\:image]').attr('content') || myimages.random().attr('src');
		
					linkdata.find('img').remove().end().append('<img class="img-thumbnail" src="'+images+'"/>');
					linkdata.find('h2').empty().text(title).end().find('p').empty().text(description);
					
					progress.addClass('hide');
					linkdata.removeClass('hide');
				});	
			}
	});