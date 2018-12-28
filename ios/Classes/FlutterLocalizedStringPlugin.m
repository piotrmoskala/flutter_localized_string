#import "FlutterLocalizedStringPlugin.h"
#import <flutter_localized_string/flutter_localized_string-Swift.h>

@implementation FlutterLocalizedStringPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterLocalizedStringPlugin registerWithRegistrar:registrar];
}
@end
