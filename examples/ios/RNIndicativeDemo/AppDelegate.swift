import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    

    let jsCodeLocation = RCTBundleURLProvider.sharedSettings()?.jsBundleURL(forBundleRoot: "index", fallbackResource: nil)
    
    let rootView = RCTRootView.init(bundleURL: jsCodeLocation,
                                    moduleName: "RNIndicativeDemo",
                                    initialProperties: nil, launchOptions: launchOptions)
    
    self.window = UIWindow.init(frame: UIScreen.main.bounds)
    
    let rootViewController = UIViewController()
    
    rootViewController.view = rootView
    
    window?.rootViewController = rootViewController
    
    window?.makeKeyAndVisible()
    return true
  }

}
