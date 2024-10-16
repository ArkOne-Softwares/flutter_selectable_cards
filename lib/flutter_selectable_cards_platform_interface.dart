import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_selectable_cards_method_channel.dart';

abstract class FlutterSelectableCardsPlatform extends PlatformInterface {
  /// Constructs a FlutterSelectableCardsPlatform.
  FlutterSelectableCardsPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterSelectableCardsPlatform _instance = MethodChannelFlutterSelectableCards();

  /// The default instance of [FlutterSelectableCardsPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterSelectableCards].
  static FlutterSelectableCardsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterSelectableCardsPlatform] when
  /// they register themselves.
  static set instance(FlutterSelectableCardsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
