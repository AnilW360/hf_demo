import { requireNativeComponent, StyleSheet, View, ViewStyle } from 'react-native';
import React from 'react';

// Define the prop types for the native component
interface HFRCTNotiScreenProps {
  style: ViewStyle;
}

// Create a wrapper for the native component
const HFRCTNotiScreen = requireNativeComponent<HFRCTNotiScreenProps>('HFRCTNotiScreen');

const NotificationView: React.FC = () => {
  return (
    <View style={styles.container}>
      <HFRCTNotiScreen style={styles.exampleView} />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  exampleView: {
    width: '100%',
    height: '100%',
  },
});

export default NotificationView;