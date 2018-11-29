
package com.reactlibrary;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableType;
import com.indicative.client.android.Indicative;

public class RNIndicativeModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;

    RNIndicativeModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "RNIndicative";
    }


    @ReactMethod
    public void launch(String apiKey) {
        Indicative.launch(reactContext, apiKey);
    }

    @ReactMethod
    public void identifyUser(String uniqueKey) {
        Indicative.setUniqueID(uniqueKey);
    }

    @ReactMethod
    public void clearUniqueKey() {
        Indicative.clearUniqueID();
    }

    @ReactMethod
    public void addCommonProperties(ReadableMap properties) {
        Indicative.addProperties(RNIndicativeUtil.toMap(properties));
    }

    @ReactMethod
    public void addCommonProperty(String uniqueKey, ReadableMap value) {

        if (value == null) {
            return;
        }
        String key = "value";

        ReadableType readableType = value.getType("value");
        switch (readableType) {
            case Boolean:
                Indicative.addProperty(uniqueKey, value.getBoolean(key));
                break;
            case Number:
                Indicative.addProperty(uniqueKey, (int) value.getDouble(key));
                break;
            case String:
                Indicative.addProperty(uniqueKey, value.getString(key));
                break;
            default:
                throw new IllegalArgumentException("Could not convert object with key: " + key + ".");
        }
    }

    @ReactMethod
    public void removeCommonProperty(String propertyName) {
        Indicative.removeProperty(propertyName);
    }

    @ReactMethod
    public void record(String eventName) {
        Indicative.recordEvent(eventName);
    }

    @ReactMethod
    public void recordWithProperties(String eventName, ReadableMap properties) {
        Indicative.recordEvent(eventName, RNIndicativeUtil.toMap(properties));
    }

    @ReactMethod
    public void recordWithUniqueKey(String eventName, String uniqueKey) {
        Indicative.recordEvent(eventName, uniqueKey);
    }

    @ReactMethod
    public void recordWithPropertiesUniqueKey(String eventName, String uniqueKey, ReadableMap properties) {
        Indicative.recordEvent(eventName, uniqueKey, RNIndicativeUtil.toMap(properties));
    }

}