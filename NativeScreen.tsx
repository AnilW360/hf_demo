import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

const NativeScreen: React.FC = () => {
  return (
    <View style={styles.container}>
      <Text>NativeScreen Screen</Text>
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

export default NativeScreen;
