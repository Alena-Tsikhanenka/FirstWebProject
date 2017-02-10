var HM = (function (HM, $) {
	var _registeredModules = {};

	HM.registerModule = function (selector, module) {
		_registeredModules.hasOwnProperty(selector) || (_registeredModules[selector] = []);
		_registeredModules[selector].push(module);
	};


	$(document).ready(function () {
		$.each(_registeredModules, function (selector, modules) {
			$(selector).each(function (i, element) {
				$.each(modules, function (i, module) {
					module.$module = $(element);
					module.init();
				});
			});
		});
	});

	return HM;

})(HM || {}, jQuery);