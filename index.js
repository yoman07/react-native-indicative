
import { NativeModules } from 'react-native';

const { RNIndicative } = NativeModules;
class Indicative {

  // --------------------------------------------------
  // Identify
  // --------------------------------------------------
  launch(apiKey) {
    RNIndicative.launch(apiKey);
  }

  identifyUser(uniqueKey) {
    RNIndicative.identifyUser(uniqueKey);
  }

  clearUniqueKey() {
    RNIndicative.clearUniqueKey();
  }

  addCommonProperties(properties) {
    RNIndicative.addCommonProperties(truncateParameters(properties));
  }

  addCommonProperty(name, value) {
    var truncatedValue = value;

    if (isNaN(truncatedValue)) {
      truncatedValue =  JSON.stringify(value).substring(0,maxLength);
    }

    RNIndicative.addCommonProperty(name, {value: truncatedValue});
  }

  removeCommonProperty(name) {
    RNIndicative.removeCommonProperty(name);
  }

  clearCommonProperties() {
    RNIndicative.clearCommonProperties();
  }

  record(eventName) {
    RNIndicative.record(eventName);
  }

  recordWithProperties(eventName, properties) {
    RNIndicative.recordWithProperties(eventName, this.truncateParameters(properties));
  }

  recordWithUniqueKey(eventName, uniqueKey) {
    RNIndicative.recordWithUniqueKey(eventName, uniqueKey);
  }

  recordWithPropertiesUniqueKey(eventName, uniqueKey, properties) {
    RNIndicative.recordWithPropertiesUniqueKey(eventName, uniqueKey, truncateParameters(properties));
  }

  truncateParameters(rawParams) {
    var truncatedParams = {};
    var maxLength = 244
    for(var key in rawParams) {
      var value = rawParams[key];
  
      if (value == undefined) {
        continue;
      }

      if (Array.isArray(value) && value.length == 0) {
        continue;
      }
  
      if (isNaN(value)) {
        var value = JSON.stringify(value);
        value =  value.substring(0,maxLength);
      }
      truncatedParams[key] = value;
    }
    return truncatedParams
  }
}

const indicative = new Indicative();

export default indicative;