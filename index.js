
import { NativeModules } from 'react-native';

const { RNIndicative } = NativeModules;

export default RNIndicative;

export const config = () => RNIndicative.config();