import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // NSString* mapsapi = NSProcessInfo.processInfo(environment)
    NSString* mapsApiKey = [NSProcessInfo processInfo] environment[@"maps_api"];
    GMSServices.provideAPIKey("mapsApikey")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
