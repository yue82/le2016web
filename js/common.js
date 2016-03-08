(function(window, $) {
    'use strict';
    $(function() {
	//affix
	setTimeout(function() {
            $('.fix-sidebar').affix({
		offset: {
		    top: function() {
			return (this.top = $('header').outerHeight(true));
		    },
		    bottom: function() {
			return (this.bottom = $('footer').outerHeight(true));
		    }
		}
            })
	}, 100);
    });
})(window, jQuery);
