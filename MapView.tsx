import React from 'react';
import { requireNativeComponent, ViewStyle, StyleProp } from 'react-native';

// Define the prop types
interface MapViewProps {
  style?: StyleProp<ViewStyle>;
}

// Create the native component
const NativeMapView = requireNativeComponent<MapViewProps>('RNTMapView');

// Create the MapView component
const MapView: React.FC<MapViewProps> = (props) => {
  return <NativeMapView {...props} />;
};

export default MapView;