import React from 'react';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import HomeScreen from './HomeScreen';
import MapViewScreen from './MapViewScreen';
import SettingsScreen from './SettingsScreen';
import NativeScreen from './NativeScreen';
import NativeMessagesScreen from './NativeMessagesScreen';
import NotificationView from './NotificationView';

const Tab = createBottomTabNavigator();

const BottomTabNavigator: React.FC = () => {
  return (
    <Tab.Navigator>
      <Tab.Screen name="Home" component={HomeScreen} />
      <Tab.Screen name="Settings" component={SettingsScreen} />
      <Tab.Screen name="Native" component={NotificationView} />
      <Tab.Screen name="Map" component={MapViewScreen} />
    </Tab.Navigator>
  );
};

export default BottomTabNavigator;
