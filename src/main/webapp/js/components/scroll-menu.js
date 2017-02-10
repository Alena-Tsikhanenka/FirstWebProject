(function (HM, $) {
	HM.cmp = HM.cmp || {};

	HM.cmp.ScrollMenu = {

		init: function () {
			var module = this;
			module.$columns = module.$module.find('.column');

			$(document).scroll(function () {
				module.adjustColumnsPosition.call(module);
			});
		},

		adjustColumnsPosition: function () {
			var module = this,
				$window = $(window),
				$document = $(document),

				windowHeight = $window.height(),
				moduleHeight = module.$module.height(),
				moduleTopPosition = module.$module.position().top;

			module.$columns.each(function () {
				var $column = $(this),
					columnHeight = $column.height(),
					windowScrollTop = $window.scrollTop();

				if (windowHeight >= columnHeight + moduleTopPosition) {
					if (windowScrollTop >= moduleTopPosition) {
						module.setTopPosition($column, windowScrollTop - moduleTopPosition);
					} else {
						module.setTopPosition($column, 0);
					}
				} else {
					var bottomReached = windowScrollTop + windowHeight >= moduleTopPosition + moduleHeight;

					if (windowScrollTop + windowHeight >= columnHeight + moduleTopPosition) {
						if (!bottomReached) {
							module.setTopPosition($column, windowScrollTop + windowHeight - columnHeight - moduleTopPosition);
						} else {
							module.setTopPosition($column, moduleHeight - columnHeight);
						}
					} else {
						module.setTopPosition($column, 0);
					}
				}
			});
		},

		setTopPosition: function ($column, position) {
			$column.css('top', position);
		}
	};

	HM.registerModule('.scroll-menu', HM.cmp.ScrollMenu);
})(HM || {}, jQuery);