var exec = require('cordova/exec');

function TwentyFourHourSetting() {
}

TwentyFourHourSetting.prototype.is24Hour = function(successCallback, errorCallback) {
  exec(successCallback, errorCallback, 'TwentyFourHourSetting', 'is24Hour');
};

module.exports = new TwentyFourHourSetting();
