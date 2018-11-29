
# react-native-indicative

## Getting started

`$ npm install react-native-indicative --save`

### Mostly automatic installation

`$ react-native link react-native-indicative`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-indicative` and add `RNIndicative.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNIndicative.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNIndicativePackage;` to the imports at the top of the file
  - Add `new RNIndicativePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-indicative'
  	project(':react-native-indicative').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-indicative/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-indicative')
  	```

## Usage
```javascript
import Indicative from 'react-native-indicative';

Indicative.launch("YOUR-INDICATIVE-API-KEY");

Indicative.record("App Open");

Indicative.identifyUser("xyz5");

Indicative.addCommonProperties({"property2": 1, "property2": "test"});

Indicative.addCommonProperty("property3", "test2");

Indicative.addCommonProperty("property4", "test4");

Indicative.removeCommonProperty("property3");

Indicative.clearCommonProperties();

Indicative.addCommonProperty("property5", "test5");

Indicative.recordWithProperties("App Open 2", {"app open property": 555});

Indicative.recordWithUniqueKey("App Open 3", "unique key");
 
Indicative.recordWithPropertiesUniqueKey("App Open 4", "unique key", {"app open property2": 555});
```
  