/** @format */

import {AppRegistry} from 'react-native';
import App from './App';
import {name as appName} from './app.json';
import Indicative from 'react-native-indicative'

AppRegistry.registerComponent(appName, () => App);

Indicative.launch("9a54d507-4f85-4511-b16a-ead6d8ea3b2d");

Indicative.record("App Open");

Indicative.identifyUser("xyz5");

Indicative.addCommonProperties({"property2": 1, "property2": "test"});

Indicative.addCommonProperty("property3", "test2");

Indicative.addCommonProperty("property4", "test4");

Indicative.addCommonProperty("propertyInteger", 5);

Indicative.addCommonProperty("propertyBoolean", true);

// Indicative.removeCommonProperty("property3");

//Indicative.clearCommonProperties();

Indicative.addCommonProperty("property5", "test5");

Indicative.recordWithProperties("App Open 2", {"app open property": 555});

Indicative.recordWithUniqueKey("App Open 3", "unique key");
 
Indicative.recordWithPropertiesUniqueKey("App Open 4", "unique key", {"app open property2": 555});