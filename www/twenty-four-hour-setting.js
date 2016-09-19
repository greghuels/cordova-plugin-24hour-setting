cordova.define("cordova-plugin-24hour-setting.TwentyFourHourSetting", function(require, exports, module) {
  var exec = require('cordova/exec');

  function TwentyFourHourSetting() {
  }

  TwentyFourHourSetting.prototype.is24Hour = function(successCallback, errorCallback) {
    exec(successCallback, errorCallback, 'TwentyFourHourSetting', 'is24Hour');
  };

  module.exports = new TwentyFourHourSetting();

});

