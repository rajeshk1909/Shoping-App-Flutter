import Cocoa
import FlutterMacOS
import FirebaseCore

@NSApplicationMain
class AppDelegate: FlutterAppDelegate {
  FirebaseApp.configure()
  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    return true
  }
}
