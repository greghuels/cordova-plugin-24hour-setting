package com.greghuels;

import android.content.Context;
import android.text.format.DateFormat;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.PluginResult;
import org.json.JSONArray;
import org.json.JSONException;

public class TwentyFourHourSetting extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if (action.equals("is24Hour")) {
            this.is24Hour(callbackContext);
            return true;
        }
        return false;
    }

    private void is24Hour(CallbackContext callbackContext) {
        Context context = this.cordova.getActivity().getApplicationContext();
        boolean is24Hour = DateFormat.is24HourFormat(context);
        callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, is24Hour));
    }

}
