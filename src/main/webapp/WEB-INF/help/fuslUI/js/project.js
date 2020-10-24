
/* 页面新增加的样式  
//document.write('<script src="js/form.js"></script>')
//document.write('<script src="plugins/ace-menu/ace-menu.js"></script>');
//document.write('<script src="plugins/ace-menu/ace.sidebar.js"></script>');
*/
$(document).ready(function(){
	
	//切换皮肤
	$('#style-switcher li a').click(function()
	  {
	    var style = $(this).attr('href').replace('#','');
        setCookie('color',style);
	    $('.skin-color').attr('href','css/skins/'+style+'.css');
	  });


    //console.log(getCookie('color'))  
    
	if(getCookie('color')=='orange'){
	    $('.skin-color').attr('href','css/skins/orange.css');
	}
    
	if(getCookie('color')=='blue'){
	    $('.skin-color').attr('href','css/skins/blue.css');
	}
    
	if(getCookie('color')=='green'){
	    $('.skin-color').attr('href','css/skins/green.css');
	}
    
   function setCookie(name,value,iDay){
		var oDate = new Date();
		oDate.setDate(oDate.getDate()+iDay);
		document.cookie=name+'='+value+';expires='+oDate;
	};
	function getCookie(name){
		var arr = document.cookie.split('; ');
		var i = 0;
		for(i=0;i<arr.length;i++){
			var arr2 = arr[i].split("=");

			if(arr2[0]==name){
				return arr2[1];
			}
		}
		return '';
	};
	  
	// === Tooltips === //
	
	$('.tip').tooltip();	
	$('.tip-left').tooltip({ placement: 'left' });	
	$('.tip-right').tooltip({ placement: 'right' });	
	$('.tip-top').tooltip({ placement: 'top' });	
	$('.tip-bottom').tooltip({ placement: 'bottom' });	
	
	/*tab-planels 选项卡*/
	var $tabsPlanels =$(".tabs li");
    $tabsPlanels.click(function(){
		$(this).addClass("active") //当前<li>元素高亮
			   .siblings().removeClass("active");   //去掉其它同辈<li>元素的高亮
        var index =  $tabsPlanels.index(this);  // 获取当前点击的<li>元素 在 全部li元素中的索引。
		$("div.tab-content > div") //选取子节点。不选取子节点的话，会引起错误。如果里面还有div
				.eq(index).fadeIn(200)  //显示 <li>元素对应的<div>元素
				.siblings().hide(); //隐藏其它几个同辈的<div>元素
	}).hover(function(){
		$(this).addClass("hover");
	},function(){
		$(this).removeClass("hover");
	})
	
	//select 下拉美化
	$('.select-group').click(function(e){
		$('.select-group').find('ul').hide();
		$(this).find('ul').show();
		e.stopPropagation();
	});
	$('.select-group li').hover(function(e){
		$(this).toggleClass('on');
		e.stopPropagation();
	});
	$('.select-group li').click(function(e){
		var val = $(this).text();
		$(this).parents('.select-group').find('input').val(val);
		$('.select-group ul').hide();
		e.stopPropagation();
	});
	$(document).click(function(){
		$('.select-group ul').hide();
	});
	//end
});
/* iCheck v0.7 */
(function($) {
  $.fn.iCheck = function(options) {
    if (/^(check|uncheck|disable|enable|update|destroy)$/.test(options)) {
      return this.each(function() {
        /destroy/.test(options) ? destroy($(this), 'is.Destroyed') : change($(this), true, options);
      });
    } else if (typeof options == 'object' || !options) {
      var ua = navigator.userAgent,
        defaults = {
          checkboxClass: 'icheckbox',
          radioClass: 'iradio',
          checkedClass: 'checked',
          disabledClass: 'disabled',
          hoverClass: 'hover',
          focusClass: 'focus',
          activeClass: 'active',
          labelHover: true,
          labelHoverClass: 'hover'
        },
        settings = $.extend({}, defaults, options),
        handle = /^(checkbox|radio)$/.test(settings.handle) ? ':' + settings.handle : ':checkbox, :radio',
        area = ('' + settings.increaseArea).replace('%', '') | 0;

      area < -50 && (area = -50);

      return this.each(function() {
        var tree = $(this).is(handle) ? $(this) : $(this).find(handle);

        tree.each(function() {
          destroy($(this));

          var node = this,
            id = node.id,
            layer = {
              position: 'absolute',
              top: -area + '%',
              left: -area + '%',
              display: 'block',
              width: 100 + (area * 2) + '%',
              height: 100 + (area * 2) + '%',
              margin: 0,
              padding: 0,
              background: '#fff',
              border: 0,
              opacity: 0
            },
            hide = /ipad|iphone|ipod|android|blackberry|windows phone|opera mini/i.test(ua) ? {position: 'absolute', visibility: 'hidden'} : area | 0 ? layer : {position: 'absolute', opacity: 0},
            className = node.type == 'checkbox' ? settings.checkboxClass : settings.radioClass,
            self = $(this).data('icheck', {style: $(this).attr('style'), options: settings}).css(hide),
            label = $('label[for=' + id + ']'),
            parent = self.wrap('<div class="' + className + '"/>').trigger('is.Created').parent().append(settings.insert),
            helper = $('<ins/>').css(layer).appendTo(parent).click(function() {
              self.click(), change(self, false, true);
            }),
            hover = settings.hoverClass,
            labelHover = settings.labelHoverClass,
            keyCache;

          settings.cursor == true && helper.css('cursor', 'pointer');
          settings.inheritClass == true && parent.addClass(node.className);
          settings.inheritID == true && id && parent.attr('id', 'icheck-' + id);
          parent.css('position') == 'static' && parent.css('position', 'relative');
          change(self, true, 'update');

          id && label.length && label.bind('click.df mouseenter.df mouseleave.df touchbegin.df touchend.df', function(event) {
            var type = event.type, item = $(this);

            if (type == 'click')
              event.preventDefault(), self.click(), change(self, false, true);
            else if (settings.labelHover == true && !node.disabled)
              /mouseenter|touchbegin/.test(type) ? (parent.addClass(hover), item.addClass(labelHover)) : (parent.removeClass(hover), item.removeClass(labelHover));
          });

          self.bind('focus.df blur.df keyup.df keydown.df keypress.df', function(event) {
            var type = event.type,
              key = event.keyCode || event.charCode || event.which,
              fallback = /MSIE [5-8]/.test(ua) ? type == 'keyup' && keyCache !== 'keypress' : type == 'keyup',
              condition = type == 'keypress' && key == 32;

            if (/focus|blur/.test(type))
              type == 'focus' ? parent.addClass(settings.focusClass) : parent.removeClass(settings.focusClass);
            else if (node.type == 'radio')
              (fallback ? change(self, true, 'update', true) : condition && !node.checked && on(self, false, parent, 'checked', true), keyCache = type);
            else if (node.type == 'checkbox' && condition)
              node.checked ? off(self, false, parent, 'checked', true) : on(self, false, parent, 'checked', true);
          });

          helper.bind('mousedown mouseup mouseout mouseenter mouseleave touchbegin touchend', function(event) {
            var type = event.type, toggle = /mousedown|mouseup|mouseout/.test(type) ? settings.activeClass : hover;

            if (node.disabled) return;
            /mousedown|mouseenter|touchbegin/.test(type) ? parent.addClass(toggle) : parent.removeClass(toggle);

            if (id && label.length && settings.labelHover == true && toggle == hover)
              /mouseleave|touchend/.test(type) ? label.removeClass(labelHover) : label.addClass(labelHover);
          });
        });
      });
    } else return this;
  };

  function change(input, direct, method, keyboard) {
    var node = input[0],
      parent = input.parent(),
      state = /disable|enable/.test(method) ? 'disabled' : 'checked',
      active = method == 'update' ? {checked: node.checked, disabled: node.disabled} : node[state];

    if (/^check|disable/.test(method) && !active)
      on(input, true, parent, state);
    else if (/uncheck|enable/.test(method) && active)
      off(input, true, parent, state);
    else if (method == 'update')
      for(var state in active) active[state] ? on(input, false, parent, state, keyboard) : off(input, false, parent, state, keyboard);
    else if (!direct) {
      method == true && !node.disabled && input.trigger('is.Clicked');
      active ? on(input, true, parent, state) : off(input, true, parent, state);
    }
  }

  function on(input, toggle, parent, state, keyboard) {
    toggle && (input[0][state] = true);

    if (parent.data(state) !== true) {
      if (state == 'checked' && input[0].type == 'radio' && input[0].name) {
        $('input[name="' + input[0].name + '"]').each(function() {
          this !== input[0] && $(this).data('icheck') && off($(this), true, $(this).parent(), state);
        });
      }

      (toggle || keyboard) && input.trigger('is.Changed');
      toggle && input.trigger('is.' + state.replace('di', 'Di').replace('ch', 'Ch'));
      parent.data(state, true).addClass(getOption(input, state));
    }
  }

  function off(input, toggle, parent, state, keyboard) {
    var callback = state == 'disabled' ? 'Enabled' : 'Unchecked';

    toggle && (input[0][state] = false);

    if (parent.data(state) !== false) {
      (toggle || keyboard) && input.trigger('is.Changed');
      toggle && input.trigger('is.' + callback);
      parent.data(state, false).removeClass(getOption(input, state));
    }
  }

  function destroy(input, callback) {
    if (input.data('icheck')) {
      var id = input[0].id, label = $('label[for=' + id + ']');

      input.parent().html(input.attr('style', input.data('icheck').style || '').trigger(callback || ''));
      input.removeData('icheck').unbind('.df').unwrap();
      id && label.length && label.unbind('.df');
    }
  }

  function getOption(input, state) {
    if (input.data('icheck')) return input.data('icheck').options[state + 'Class'];
  }
})(jQuery);

$(document).ready(function(){
  $('.icheck-warp input').iCheck({
    checkboxClass: 'icheckbox_flat',
    radioClass: 'iradio_flat'
  });
});

//iCheck v0.7 end
//@FAQ  可折叠
(function( $ ) {
	$.fn.rlAccordion = function(method, options) {
		var settings = $.extend({
			rlAccordion: "rlAccordion", 		// add class in the same level of a parent statement for avoid styles conflict
			signTag: "<span></span>", 			// html tag parent signs
			titles: "h3",			 			// html tag parent of minus and plus, this may replaced also for a class
			titlesChild: "span",				// html child titles and parent signs
			container: "div",					// html tag adjacent sibling of titles
			childNum: 0,						// number of the children start open
			classOpen: "opened",				// add class to the titles option adjacent sibling
			open: "+",  						// unicode plus sign
			close: "&#x2212;",					// unicode minus sign
			rlOpen: "rl-open", 					// class for a plus sign
			rlClose: "rl-close" 				// class for a minus sign
		}, options);

		var $element = $(this).children(settings.titles); 		// 限制的范围
		var $symbols = $(settings.signTag); 					// 创建HTML标记
		var $signOpen = $symbols.html(settings.open); 			// insert a unicode open sign into the parent
		var $signClose = $symbols.html(settings.close); 		// insert a unicode close sign into the parent
		var $insertElement = $symbols.appendTo($element); 		// insert symbols signs into titles settings

		// add class in the same level of a parent statement for avoid styles conflict
		$element.parent().addClass(settings.rlAccordion);

		// parse code to assign the corresponding unicode and class
		if ( $element.next().hasClass(settings.classOpen) ) {
			$element.children().html(settings.close).addClass(settings.rlClose);
		}
		else {
			$element.children().html(settings.open).addClass(settings.rlOpen);
		}

		var methods = {
			// 默认设置
			init : function() { 
				return this.each(function() {

					$(this).find(settings.container).eq(settings.childNum).addClass(settings.classOpen).slideDown()
								 .prev().children().html(settings.close).removeClass(settings.rlOpen).addClass(settings.rlClose); // assign the children start open

					$element.on('click', function() {
						$(this).parent().find(settings.container).removeClass(settings.classOpen).slideUp();
						$(this).parent().find(settings.titles).children().html(settings.open);
						$(this).next().addClass(settings.classOpen).slideDown();

						if ( $(this).children().hasClass(settings.rlClose) ) {
								 $(this).next().stop();
						}

						if ( $(this).next().hasClass(settings.classOpen) ) {
								 $(this).parent().find(settings.titlesChild).removeClass(settings.rlClose).addClass(settings.rlOpen);
								 $(this).children().html(settings.close).removeClass(settings.rlOpen).addClass(settings.rlClose);
						}
						else {
							$(this).children().html(settings.open).removeClass(settings.rlClose).addClass(settings.rlOpen);
						}
					});
				});
			},

			//可同时打开多个
			single : function() {
				return this.each(function() {

					$(this).find(settings.container).eq(settings.childNum).addClass(settings.classOpen).slideDown()
								 .prev().children().html(settings.close).removeClass(settings.rlOpen).addClass(settings.rlClose); // assign the children start open

					$element.on('click', function() {
						$(this).next().slideToggle().toggleClass(settings.classOpen);
						if ($(this).next().hasClass(settings.classOpen)) {
								$(this).children().html(settings.close).removeClass(settings.rlOpen).addClass(settings.rlClose);
						}
						else {
							$(this).children().html(settings.open).removeClass(settings.rlClose).addClass(settings.rlOpen);
						}
					});
				});
			},// single end
		};

		// 方法调用逻辑
		if ( methods[method] ) {
			return methods[ method ].apply( this, Array.prototype.slice.call( arguments, 1 ));
		} else if ( typeof method === 'object' || ! method ) {
			return methods.init.apply( this, arguments );
		} else {
			$.error( 'Method ' +  method + ' does not exist on jQuery.rlAccordion ' );
		}
	};

})( jQuery );

$(function() {
	$(".faq-warp").rlAccordion();
	$("#second").rlAccordion('single', {
		childNum: 0  //默认打开
	});	
});


