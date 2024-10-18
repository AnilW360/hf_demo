// screens/HomeScreen.tsx
import React from 'react';
import { NativeModules,View, Text, StyleSheet, Button } from 'react-native';

const HomeScreen: React.FC = () => {
  const { HFMessageNativeModule } = NativeModules;

  const showMessageScreen = () => {
    HFMessageNativeModule.openNativeScreen()
      .then((result:any) => {
        console.log('Successfully pushed the view:', result);
      })
      .catch((error:any) => {
        console.error('Error pushing the view:', error);
      });
  };

  return (
    <View style={styles.container}>
      <Text>Home Screen</Text>
      <Button title="Show Message Screen" onPress={showMessageScreen} />
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

export default HomeScreen;