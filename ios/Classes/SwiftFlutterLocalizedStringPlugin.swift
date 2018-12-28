import Flutter
import UIKit

public class SwiftFlutterLocalizedStringPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_localized_string", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterLocalizedStringPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
