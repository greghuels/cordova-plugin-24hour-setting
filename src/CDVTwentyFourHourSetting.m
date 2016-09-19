#import "CDVTwentyFourHourSetting.h"
#import <Cordova/CDV.h>

@implementation CDVTwentyFourHourSetting

- (void)is24Hour:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;

    /*** Code to get 24 hour mode or not ***/
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setLocale:[NSLocale currentLocale]];
    [formatter setDateStyle:NSDateFormatterNoStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    NSString *dateString = [formatter stringFromDate:[NSDate date]];
    NSRange amRange = [dateString rangeOfString:[formatter AMSymbol]];
    NSRange pmRange = [dateString rangeOfString:[formatter PMSymbol]];
    BOOL is24h = (amRange.location == NSNotFound && pmRange.location == NSNotFound);

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:is24h];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
