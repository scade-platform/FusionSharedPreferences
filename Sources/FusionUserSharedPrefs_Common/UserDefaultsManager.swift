//
//  UserDefaultsManager.swift
//  
//
//  Created by VJ on 16/12/21.
//

import Foundation

public protocol UserDefaultsManagerProtocol {
    
    init()
    
    /*
     * @property set
     *
     * @discussion key-value pairs for the value Intger type
     *
     * @param value: Integer
     *        key: Key String Value
     *
     */
    func putInt(value: Int32, key: String) -> Void
    
    /*
     * @property set
     *
     * @discussion key-value pairs for the value Boolean type
     *
     * @param value: Boolean
     *        key: Key String Value
     *
     */
    func putBoolean(value: Bool, key: String) -> Void
    
    /*
     * @property set
     *
     * @discussion key-value pairs for the value String type
     *
     * @param value: String
     *        key: Key String Value
     *
     */
    func putString(value: String, key: String) -> Void
    
    /*
     * @property set
     *
     * @discussion key-value pairs for the value Float type
     *
     * @param value: Float
     *        key: Key String Value
     *
     */
    func putFloat(value: Float, key: String) -> Void
    
    /*
     * @property getInt
     *
     * @discussion Get the Integer value for the given key
     *             This method is required to support the earlier Swift versions for backward compatibility
     *
     * @param key: Key Value
     *
     * @result Int Value
     */
    func getInt(key:String) -> Int32
    
    /*
     * @property getString
     *
     * @discussion Get the String value for the given key
     *             This method is required to support the earlier Swift versions for backward compatibility
     *
     * @param key: Key Value
     *
     * @result String Value
     */
    func getString(key:String) -> String
    
    /*
     * @property getBoolean
     *
     * @discussion Get the bolean value for the given key
     *             This method is required to support the earlier Swift versions for backward compatibility
     *
     * @param key: Key Value
     *
     * @result Boolean Value
     */
    func getBoolean(key:String) -> Bool
    
    /*
     * @property getDouble
     *
     * @discussion Get the Double value for the given key
     *             This method is required to support the earlier Swift versions for backward compatibility
     *
     * @param key: Key Value
     *
     * @result Float Value
     */
    func getFloat(key:String) -> Float
    
    /*
     * @property containsKey
     *
     * @discussion Returns true if the key is present in the UserDefaults memory for NonNull value, else return false
     *
     * @param key: Key Value
     *
     * @result ifContainsBool
     */
    func containsKey(key:String) -> Bool
    
    /*
     * @property removeKey
     *
     * @discussion Removes the Key-Value pair from the UserDefaults memory
     *
     * @param key: Key Value
     */
    func removeKey(key: String) -> Void
    
    /*
     * @property removeAll
     *
     * remove all the key-value pairs from the UserDefaults memory
     *
     */
    func removeAll() -> Void
}

