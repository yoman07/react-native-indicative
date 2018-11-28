/** @format */

import {AppRegistry} from 'react-native';
import App from './App';
import {name as appName} from './app.json';
import {config} from 'react-native-indicative'

AppRegistry.registerComponent(appName, () => App);
config();
