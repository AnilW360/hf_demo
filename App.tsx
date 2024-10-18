import React from 'react';
import { SafeAreaProvider } from 'react-native-safe-area-context';
import { NavigationContainer } from '@react-navigation/native';
import BottomTabNavigator from './BottomTabs';

function App(): React.JSX.Element {
/*   const isDarkMode = useColorScheme() === 'dark';
  const { HFNotificationScreen } = NativeModules;

  const backgroundStyle = {
    backgroundColor: isDarkMode ? Colors.darker : Colors.lighter,
  };

  const showScreen=()=>{
    console.log("showScreen");
    HFNotificationScreen.showScreen();
  } */
//<MapView style={{flex: 1}}/>
  return (
    <SafeAreaProvider>
      <NavigationContainer>
        <BottomTabNavigator />
    </NavigationContainer>
    </SafeAreaProvider>
  );
}

export default App;
