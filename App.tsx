import React from 'react';
import {Text, SafeAreaView, NativeModules} from 'react-native';

const log = console.log;

const App = () => {
  console.log(NativeModules.Counter);
  
  NativeModules.Counter.increment((value: number) =>
    log('The number is ' + value),
  );
  return (
    <SafeAreaView>
      <Text>Native Modules - IOS</Text>
    </SafeAreaView>
  );
};

export default App;
