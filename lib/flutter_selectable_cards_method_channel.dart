import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_selectable_cards_platform_interface.dart';

/// An implementation of [FlutterSelectableCardsPlatform] that uses method channels.
class MethodChannelFlutterSelectableCards
    extends FlutterSelectableCardsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_selectable_cards');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
