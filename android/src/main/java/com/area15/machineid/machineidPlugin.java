package com.yourcompany.machineid;

import android.provider.Settings;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;
import com.getcapacitor.JSObject;

@CapacitorPlugin(name = "MachineId")
public class machineidPlugin extends Plugin {

    @PluginMethod
    public void getMachineId(PluginCall call) {
        String androidId = Settings.Secure.getString(getContext().getContentResolver(), Settings.Secure.ANDROID_ID);

        JSObject result = new JSObject();
        result.put("id", androidId);
        call.resolve(result);
    }
}