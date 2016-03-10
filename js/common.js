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

jQuery(document).ready(function ($) {
    $('.dropdown-toggle').click(function(e) {
        if ($(e.target).hasClass('link-menu')) {
            var location = $(this).attr('href');
            window.location.href = location;
            return false;
        }
        return true;
    });
});
