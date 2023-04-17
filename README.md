## FusionSharedPreferences: UserDefaults and SharedPreferences for iOS and Android using Swift

This repository provides an example of how to use UserDefaults in iOS and SharedPreferences in Android using Swift. Both UserDefaults and SharedPreferences are used to store small amounts of data in key-value pairs, making it easy to save and retrieve data from within your application.

## Getting Started
To get started, simply clone or download the repository and open the project in SCADE editor. Select your target as `iOS` or `Android` as per the requirement.

## How to Use
The example code demonstrates how to save and retrieve a simple string value using UserDefaults and SharedPreferences. In both platforms, the key-value pair is saved and fetched using the sample code snippet. 

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

## Using with SCADE IDE

```swift
 #if os(iOS)
 UserDefaults.standard.set(email, forKey: "email")
 UserDefaults.standard.integer(forKey: key) ?? 0
 #endif

 #if os(Android)
 import Android
 import AndroidContent
  
 weak var delegateEditor: SharedPreferencesEditorProxyProtocol?
 
 public func putInt(value: Int32, key: String) {
        let val32:Int32 = value
        delegateEditor!.putInt(key: key, value: val32)
        delegateEditor!.commit()
 }

 public func putString(value: String, key: String) {
        delegateEditor!.putString(key: key, value: value)
        delegateEditor!.commit()
 }

 public func getInt(key: String) -> Int32 {
        let intValue:Int32 = (delegate?.getInt(key: key, defValue: 0)) ?? 0
        return intValue
 }

 public func getString(key: String) -> String {
        let strValue:String = delegate?.getString(key: key, defValue: "defvalueforgetstring")  ?? ""
        return strValue
 }
 #endif

```
## Conclusion
UserDefaults and SharedPreferences are simple and useful tools for storing key-value data in your applications. This repository provides a basic example of how to use them in both iOS and Android using Swift in SCADE editor. Feel free to use this code as a starting point for your own projects using Swift!


## Contribution
<p>Consider contributing by creating a pull request (PR) or opening an issue. By creating an issue, you can alert the repository's maintainers to any bugs or missing documentation you've found. 🐛📝 If you're feeling confident and want to make a bigger impact, creating a PR, can be a great way to help others. 📖💡 Remember, contributing to open source is a collaborative effort, and any contribution, big or small, is always appreciated! 🙌 So why not take the first step and start contributing today? 😊</p>
