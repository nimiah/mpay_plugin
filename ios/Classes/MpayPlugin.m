#import "MpayPlugin.h"
#if __has_include(<mpay_plugin/mpay_plugin-Swift.h>)
#import <mpay_plugin/mpay_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "mpay_plugin-Swift.h"
#endif

@implementation MpayPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMpayPlugin registerWithRegistrar:registrar];
}
@end
