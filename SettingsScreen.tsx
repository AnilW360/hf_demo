// screens/SettingsScreen.tsx
import React from 'react';
import { NativeModules,View, Text, StyleSheet, Button } from 'react-native';

const SettingsScreen: React.FC = () => {
  const { HFNotificationScreen } = NativeModules;

  const showScreen = () => {
    console.log('showScreen');
    HFNotificationScreen.showScreen();
  };

  return (
    <View style={styles.container}>
      <Text>Settings Screen</Text>
      <Button title="Show Message Screen" onPress={showScreen} />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
});

export default SettingsScreen;
