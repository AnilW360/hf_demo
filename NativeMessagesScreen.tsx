import { View, Text } from 'react-native'
import React from 'react'
import { NativeModules } from 'react-native';
import { requireNativeComponent, ViewStyle, StyleProp } from 'react-native';

// Define the prop types
interface RCTNativeScreenProps {
  style?: StyleProp<ViewStyle>;
}

// Create the native component
const HFRCTScreen = requireNativeComponent<RCTNativeScreenProps>('HFRCTScreen');

// Create the MapView component
const RCTNativeScreen: React.FC<RCTNativeScreenProps> = (props) => {
  return <HFRCTScreen {...props} />;
};

const NativeMessagesScreen = () => {
  //const { HFMessageNativeModule } = NativeModules;
  console.log("first log " ,RCTNativeScreen)
  return (
    <View style={{flex:1}}>
      <Text>Native Messages Screen</Text>
    <RCTNativeScreen style={{flex:1,backgroundColor:'red'}}/>
    </View>
  )
}

export default NativeMessagesScreen