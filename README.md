## FusionSharedPreferences: UserDefaults and SharedPreferences for iOS and Android using Swift

This repository provides an example of how to use UserDefaults in iOS and SharedPreferences in Android using Swift. Both UserDefaults and SharedPreferences are used to store small amounts of data in key-value pairs, making it easy to save and retrieve data from within your application.

## Getting Started
To get started, simply clone or download the repository and open the project in SCADE editor. Select your target as `iOS` or `Android` as per the requirement.

## How to Use
The example code demonstrates how to save and retrieve a simple string value using UserDefaults and SharedPreferences. In both platforms, the key-value pair is saved when the user taps a "Save" button and retrieved when the user taps a "Load" button.


### iOS

In the iOS example, the UserDefaults are accessed via the UserDefaults.standard instance. The string value is saved using the `set(_:forKey:)` method, and retrieved using the `string(forKey:)` method.

```swift
let defaults = UserDefaults.standard
defaults.set(value, forKey: "myKey")
let retrievedValue = defaults.string(forKey: "myKey")
```

### Android
In the Android example, the SharedPreferences are accessed via the `getSharedPreferences()` method. The string value is saved using the `edit()` method to get an instance of the SharedPreferences.Editor class. The value is then saved using the putString() method and committed using the `commit()` method. To retrieve the value, we simply call the `getString()` method.

```java
SharedPreferences sharedPreferences = getSharedPreferences("MySharedPref", MODE_PRIVATE);
SharedPreferences.Editor myEdit = sharedPreferences.edit();
myEdit.putString("name", name.getText().toString());
```

