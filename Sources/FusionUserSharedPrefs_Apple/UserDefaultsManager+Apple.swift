//
//  File.swift
//  
//
//  Created by VJ on 16/12/21.
//

import Foundation
import FusionUserSharedPrefs_Common

public class UserDefaultsManager:  UserDefaultsManagerProtocol  {
    
    public required init() {}
    
    public func putInt(value: Int32, key: String) {
        UserDefaults.standard.set(value, forKey: key)
    }
    
    public func putBoolean(value: Bool, key: String) {
        UserDefaults.standard.set(value, forKey: key)
    }
    
    public func putString(value: String, key: String) {
        UserDefaults.standard.set(value, forKey: key)
    }
    
    public func putFloat(value: Float, key: String) {
        UserDefaults.standard.set(value, forKey: key)
    }
    
    public func getInt(key: String) -> Int32 {
        let intValue:Int = UserDefaults.standard.integer(forKey: key)
        return Int32(intValue)
    }
    
    public func getString(key: String) -> String {
        let strValue:String = UserDefaults.standard.string(forKey: key) ?? ""
        return strValue
    }
    
    public func getBoolean(key: String) -> Bool {
        let boolValue:Bool = UserDefaults.standard.bool(forKey: key)
        return boolValue
    }
    
    public func getFloat(key: String) -> Float {
        let floatValue:Float = UserDefaults.standard.float(forKey: key)
        return floatValue
    }
    
    public func containsKey(key: String) -> Bool {
        if UserDefaults.standard.object(forKey: key) == nil {
            return false
        } else {
            return true
        }
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
