import Foundation

@objc(RNIndicative)
class RNIndicative: NSObject {
    
    @objc static func requiresMainQueueSetup() -> Bool {
        return false
    }
    
    @objc(launch:)
    func launch(apiKey: String) -> Void {
        Indicative.launch(apiKey)
    }
    
    @objc(identifyUser:)
    func identifyUser(uniqueKey: String) -> Void {
        Indicative.identifyUser(uniqueKey)
    }
    
    @objc(clearUniqueKey)
    func clearUniqueKey() -> Void {
        Indicative.clearUniqueKey()
    }
    
    @objc(addCommonProperties:)
    func addCommonProperties(properties: [AnyHashable : Any]?) -> Void {
        Indicative.addCommonProperties(properties)
    }
    
    @objc(addCommonProperty:withValue:)
    func addCommonProperty(name: String, value: [AnyHashable : Any]?) -> Void {
        guard let val = value?["value"] else { return }
        Indicative.addCommonProperty(val, forName: name)
    }
    
    @objc(removeCommonProperty:)
    func removeCommonProperty(name: String) -> Void {
        Indicative.removeCommonProperty(withName: name)
    }
    
    @objc(clearCommonProperties)
    func clearCommonProperties() -> Void {
        Indicative.clearCommonProperties()
    }
    
    @objc(record:)
    func record(eventName: String) -> Void {
        Indicative.record(eventName)
    }
    
    @objc(recordWithProperties:withProperties:)
    func record(eventName: String, properties: [AnyHashable : Any]?) -> Void {
        Indicative.record(eventName, withProperties: properties)
    }
    
    @objc(recordWithUniqueKey:withUniqueKey:)
    func record(eventName: String, uniqueKey: String) -> Void {
        Indicative.record(eventName, withUniqueKey: uniqueKey)
    }
    
    @objc(recordWithPropertiesUniqueKey:withUniqueKey:withProperties:)
    func record(eventName: String, uniqueKey: String, properties: [AnyHashable : Any]?) -> Void {
        Indicative.record(eventName, withProperties: properties, withUniqueKey: uniqueKey)
    }
}
