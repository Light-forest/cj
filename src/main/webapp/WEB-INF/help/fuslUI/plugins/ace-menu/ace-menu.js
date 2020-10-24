+function ($) {
  'use strict';

  function transitionEnd() {
    var el = document.createElement('bootstrap')

    var transEndEventNames = {
      WebkitTransition : 'webkitTransitionEnd',
      MozTransition    : 'transitionend',
      OTransition      : 'oTransitionEnd otransitionend',
      transition       : 'transitionend'
    }

    for (var name in transEndEventNames) {
      if (el.style[name] !== undefined) {
        return { end: transEndEventNames[name] }
      }
    }

    return false // explicit for ie8 (  ._.)
  }

  // http://blog.alexmaccaw.com/css-transitions 

  $(function () {
    $.support.transition = transitionEnd()

    if (!$.support.transition) return

    $.event.special.bsTransitionEnd = {
      bindType: $.support.transition.end,
      delegateType: $.support.transition.end,
      handle: function (e) {
        if ($(e.target).is(this)) return e.handleObj.handler.apply(this, arguments)
      }
    }
  })

}(jQuery);


+function ($) {
  'use strict';

  // SCROLLSPY CLASS DEFINITION
  // ==========================

  function ScrollSpy() {
    
  }

 

}(jQuery);



/**
 Required. Ace's Basic File to Initiliaze Different Parts and Some Variables.
*/

(function($ , undefined) {
	if( !('ace' in window) ) window['ace'] = {}
	if( !('helper' in window['ace']) ) window['ace'].helper = {}
	if( !('vars' in window['ace']) ) window['ace'].vars = {}
	window['ace'].vars['icon'] = ' ace-icon ';
	window['ace'].vars['.icon'] = '.ace-icon';

	ace.vars['touch']	= ('ontouchstart' in document.documentElement);//(('ontouchstart' in document.documentElement) || (window.DocumentTouch && document instanceof DocumentTouch));
	//sometimes we try to use 'tap' event instead of 'click' if jquery mobile plugin is available
	ace['click_event'] = ace.vars['touch'] && $.fn.tap ? 'tap' : 'click';
	
	
	//sometimes the only good way to work around browser's pecularities is to detect them using user-agents
	//though it's not accurate
	var agent = navigator.userAgent
	ace.vars['webkit'] = !!agent.match(/AppleWebKit/i)
	ace.vars['safari'] = !!agent.match(/Safari/i) && !agent.match(/Chrome/i);
	ace.vars['android'] = ace.vars['safari'] && !!agent.match(/Android/i)
	ace.vars['ios_safari'] = !!agent.match(/OS ([4-9])(_\d)+ like Mac OS X/i) && !agent.match(/CriOS/i)
	
	ace.vars['ie'] = window.navigator.msPointerEnabled || (document.all && document.querySelector);//8-11
	ace.vars['old_ie'] = document.all && !document.addEventListener;//8 and below
	ace.vars['very_old_ie']	= document.all && !document.querySelector;//7 and below
	ace.vars['firefox'] = 'MozAppearance' in document.documentElement.style;
	
	ace.vars['non_auto_fixed'] = ace.vars['android'] || ace.vars['ios_safari'];
})(jQuery);


jQuery(function($) {
	basics();
	enableSidebar();
	
	enableAjax();
	
	//handleScrollbars();
	
	//dropdownAutoPos();
	
	//navbarHelpers();
	//sidebarTooltips();
	
	//scrollTopBtn();
	
	//someBrowserFix();
	
	//bsCollapseToggle();
	
	smallDeviceDropdowns();
	
	////////////////////////////

	function basics() {
		// for android and ios we don't use "top:auto" when breadcrumbs is fixed
		if(ace.vars['non_auto_fixed']) {
			$('body').addClass('mob-safari');
		}

		ace.vars['transition'] = !!$.support.transition.end
	}
	
	function enableSidebar() {
		//initiate sidebar function
		var $sidebar = $('.sidebar');
		if($.fn.ace_sidebar) $sidebar.ace_sidebar();
		if($.fn.ace_sidebar_scroll) $sidebar.ace_sidebar_scroll({
			//'scroll_style': 'scroll-dark scroll-thin',
			'scroll_to_active': true, //scroll to selected item? (one time only on page load)
			'include_shortcuts': true, //true = include shortcut buttons in the scrollbars
			'include_toggle': false || ace.vars['safari'] || ace.vars['ios_safari'], //true = include toggle button in the scrollbars
			'smooth_scroll': 150, //> 0 means smooth_scroll, time in ms, used in first approach only, better to be almost half the amount of submenu transition time
			'outside': false//true && ace.vars['touch'] //used in first approach only, true means the scrollbars should be outside of the sidebar
		});
		if($.fn.ace_sidebar_hover)	$sidebar.ace_sidebar_hover({
			'sub_hover_delay': 750,
			'sub_scroll_style': 'no-track scroll-thin scroll-margin scroll-visible'
		});
	}

	
	function enableAjax() {
		//Load content via ajax
		if($.fn.ace_ajax) {
		   $('[data-ajax-content=true]').ace_ajax({
			 'close_active': true,
			 
			 'content_url': function(hash) {
				//***NOTE***
				//this is for Ace demo only, you should change it to return a valid URL
				//please refer to documentation for more info

				if( !hash.match(/^page\//) ) return false;
				var path = document.location.pathname;

				//for example in Ace HTML demo version we convert /ajax/ajax.html#page/gallery to > /ajax/gallery.html and load it
				if(path.match(/(\/ajax\/)(ajax\.html)?/))
					return path.replace(/(\/ajax\/)(ajax\.html)?/, '/ajax/'+hash.replace(/^page\//, '')+'.html') ;

				//for example in Ace PHP demo version we convert "ajax.php#page/dashboard" to "ajax.php?page=dashboard" and load it
				return path + "?" + hash.replace(/\//, "=");
			  },
			  
			  'default_url': 'page/index'//default hash
		   })
		}
	}

	/////////////////////////////

	


	//in small devices display navbar dropdowns like modal boxes
	function smallDeviceDropdowns() {
	  if(ace.vars['old_ie']) return;
	  
	  $('.ace-nav > li')
	  .on('shown.bs.dropdown.navbar', function(e) {
		adjustNavbarDropdown.call(this);
	  })
	  .on('hidden.bs.dropdown.navbar', function(e) {
		$(window).off('resize.navbar.dropdown');
		resetNavbarDropdown.call(this);
	  })
	 
	  function adjustNavbarDropdown() {
		var $sub = $(this).find('> .dropdown-menu');

		if( $sub.css('position') == 'fixed' ) {
			var win_width = parseInt($(window).width());
			var offset_w = win_width > 320 ? 60 : (win_width > 240 ? 40 : 30);
			var avail_width = parseInt(win_width) - offset_w;
			var avail_height = parseInt($(window).height()) - 30;
			
			var width = parseInt(Math.min(avail_width , 320));
			//we set 'width' here for text wrappings and spacings to take effect before calculating scrollHeight
			$sub.css('width', width);

			var tabbed = false;
			var extra_parts = 0;
			var dropdown_content = $sub.find('.tab-pane.active .dropdown-content.ace-scroll');
			if(dropdown_content.length == 0) dropdown_content = $sub.find('.dropdown-content.ace-scroll');
			else tabbed = true;

			var parent_menu = dropdown_content.closest('.dropdown-menu');
			var scrollHeight = $sub[0].scrollHeight;
			if(dropdown_content.length == 1) {
				//sometimes there's no scroll-content, for example in detached scrollbars
				var content =  dropdown_content.find('.scroll-content')[0];
				if(content) {
					scrollHeight = content.scrollHeight;
				}
			
				extra_parts += parent_menu.find('.dropdown-header').outerHeight();
				extra_parts += parent_menu.find('.dropdown-footer').outerHeight();
				
				var tab_content = parent_menu.closest('.tab-content');
				if( tab_content.length != 0 ) {
					extra_parts += tab_content.siblings('.nav-tabs').eq(0).height();
				}
			}
			

			
			var height = parseInt(Math.min(avail_height , 480, scrollHeight + extra_parts));
			var left = parseInt(Math.abs((avail_width + offset_w - width)/2));
			var top = parseInt(Math.abs((avail_height + 30 - height)/2));

			
			var zindex = parseInt($sub.css('z-index')) || 0;

			$sub.css({'height': height, 'left': left, 'right': 'auto', 'top': top - (!tabbed ? 1 : 3)});
			if(dropdown_content.length == 1) {
				if(!ace.vars['touch']) {
					dropdown_content.ace_scroll('update', {size: height - extra_parts}).ace_scroll('enable').ace_scroll('reset');
				}
				else {
					dropdown_content
					.ace_scroll('disable').css('max-height', height - extra_parts).addClass('overflow-scroll');
				}
			}
			$sub.css('height', height + (!tabbed ? 2 : 7));//for bottom border adjustment and tab content paddings
			
			
			if($sub.hasClass('user-menu')) {
				$sub.css('height', '');//because of user-info hiding/showing at different widths, which changes above 'scrollHeight', so we remove it!
				
				//user menu is re-positioned in small widths
				//but we need to re-position again in small heights as well (modal mode)
				var user_info = $(this).find('.user-info');
				if(user_info.length == 1 && user_info.css('position') == 'fixed') {
					user_info.css({'left': left, 'right': 'auto', 'top': top, 'width': width - 2, 'max-width': width - 2, 'z-index': zindex + 1});
				}
				else user_info.css({'left': '', 'right': '', 'top': '', 'width': '', 'max-width': '', 'z-index': ''});
			}
			
			//dropdown's z-index is limited by parent .navbar's z-index (which doesn't make sense because dropdowns are fixed!)
			//so for example when in 'content-slider' page, fixed modal toggle buttons go above are dropdowns
			//so we increase navbar's z-index to fix this!
			$(this).closest('.navbar.navbar-fixed-top').css('z-index', zindex);
		}
		else {
			if($sub.length != 0) resetNavbarDropdown.call(this, $sub);
		}
		
		var self = this;
		$(window)
		.off('resize.navbar.dropdown')
		.one('resize.navbar.dropdown', function() {
			$(self).triggerHandler('shown.bs.dropdown.navbar');
		})
	  }

	  //reset scrollbars and user menu
	  function resetNavbarDropdown($sub) {
		$sub = $sub || $(this).find('> .dropdown-menu');
	  
	    if($sub.length > 0) {
			$sub
			.css({'width': '', 'height': '', 'left': '', 'right': '', 'top': ''})
			.find('.dropdown-content').each(function() {
				if(ace.vars['touch']) {
					$(this).css('max-height', '').removeClass('overflow-scroll');
				}

				var size = parseInt($(this).attr('data-size') || 0) || $.fn.ace_scroll.defaults.size;
				$(this).ace_scroll('update', {size: size}).ace_scroll('enable').ace_scroll('reset');
			})
			
			if( $sub.hasClass('user-menu') ) {
				var user_info = 
				$(this).find('.user-info')
				.css({'left': '', 'right': '', 'top': '', 'width': '', 'max-width': '', 'z-index': ''});
			}
		}
		
		$(this).closest('.navbar').css('z-index', '');
	  }
	}

})




//some functions
ace.helper.redraw = function(elem, force) {
	var saved_val = elem.style['display'];
	elem.style.display = 'none';
	elem.offsetHeight;
	if(force !== true) {
		elem.style.display = saved_val;
	}
	else {
		//force redraw for example in old IE
		setTimeout(function() {
			elem.style.display = saved_val;
		}, 10);
	}
}

ace.helper.boolAttr = function(elem, attr) {
	return elem.getAttribute(attr) === "true";
}
ace.helper.intAttr = function(elem, attr) {
	return parseInt(elem.getAttribute(attr)) || 0;
}

ace.helper.scrollTop = function() {
	return document.scrollTop || document.documentElement.scrollTop || document.body.scrollTop
	//return $(window).scrollTop();
}
ace.helper.winHeight = function() {
	return window.innerHeight || document.documentElement.clientHeight;
	//return $(window).innerHeight();
}
ace.helper.camelCase = function(str) {
	return str.replace(/-([\da-z])/gi, function(match, chr) {
	  return chr ? chr.toUpperCase() : '';
	});
}
ace.helper.removeStyle = 
  'removeProperty' in document.documentElement.style
  ?
  function(elem, prop) { elem.style.removeProperty(prop) }
  :
  function(elem, prop) { elem.style[ace.helper.camelCase(prop)] = '' }


ace.helper.hasClass = 
  'classList' in document.documentElement
  ?
  function(elem, className) { return elem.classList.contains(className); }
  :
  function(elem, className) { return elem.className.indexOf(className) > -1; }
	  
