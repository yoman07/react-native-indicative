
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
    RNIndicative.addCommonProperties(properties);
  }

  addCommonProperty(name, value) {
    RNIndicative.addCommonProperty(name, value);
  }

  removeCommonProperty(name) {
    RNIndicative.removeCommonProperty(name);
  }

  clearCommonProperties() {
    RNIndicative.clearCommonProperties();
  }

  clearCommonProperties() {
    RNIndicative.clearCommonProperties();
  }

  record(eventName) {
    RNIndicative.record(eventName);
  }

  recordWithProperties(eventName, properties) {
    RNIndicative.recordWithProperties(eventName, properties);
  }

  recordWithUniqueKey(eventName, uniqueKey) {
    RNIndicative.recordWithUniqueKey(eventName, uniqueKey);
  }

  recordWithPropertiesUniqueKey(eventName, uniqueKey, properties) {
    RNIndicative.recordWithPropertiesUniqueKey(eventName, uniqueKey, properties);
  }
}

const indicative = new Indicative();

export default indicative;