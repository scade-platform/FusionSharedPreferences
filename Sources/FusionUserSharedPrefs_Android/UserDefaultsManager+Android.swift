//
//  File.swift
//
//
//  Created by VJ on 18/12/21.
//

import Android
import AndroidContent
import Foundation
import FusionUserSharedPrefs_Common
import Java

public class UserDefaultsManager: Object, UserDefaultsManagerProtocol,
                                  SharedPreferencesProxyProtocol, SharedPreferencesEditorProxyProtocol
{
    
    weak var delegate: SharedPreferencesProxyProtocol?
    weak var delegateEditor: SharedPreferencesEditorProxyProtocol?
    
    public required override init() { super.init() }
    
    public required init(_ obj: JavaObject) {
        super.init(obj)
    }
    
    public required init(ctor: JavaMethodID, _ args: [JavaParameter]) {
        super.init(ctor: ctor, args)
    }
    
    public func putInt(value: Int32, key: String) {
        let val32:Int32 = value
        delegateEditor!.putInt(key: key, value: val32)
        delegateEditor!.commit()
    }
    
    public func putBoolean(value: Bool, key: String) {
        delegateEditor!.putBoolean(key: key, value: value)
        delegateEditor!.commit()
    }
    
    public func putString(value: String, key: String) {
        delegateEditor!.putString(key: key, value: value)
        delegateEditor!.commit()
    }
    
    public func putFloat(value: Float, key: String) {
        delegateEditor!.putFloat(key: key, value: value)
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
    
    public func getBoolean(key: String) -> Bool {
        let boolValue:Bool = delegate?.getBoolean(key: key, defValue: false)  ?? false
        return boolValue
    }
    
    public func getFloat(key: String) -> Float {
        let floatValue:Float = delegate?.getFloat(key: key, defValue: 0.0)  ?? 0.0
        return floatValue
    }
    
    public func containsKey(key: String) -> Bool {
        return delegate!.contains(key: key)
    }
    
    public func removeKey(key: String) {
        UserDefaults.standard.removeObject(forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    public func removeAll() {
        if let appDomain = Bundle.main.bundleIdentifier {
            UserDefaults.standard.removePersistentDomain(forName: appDomain)
        }
    }
}
