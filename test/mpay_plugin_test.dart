import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mpay_plugin/mpay_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('mpay_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await MpayPlugin.platformVersion, '42');
  });
}
