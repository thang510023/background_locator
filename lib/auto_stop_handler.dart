import 'package:flutter/material.dart';

import 'background_locator.dart';

class AutoStopHandler extends WidgetsBindingObserver {
  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state != AppLifecycleState.resumed) {
      await BackgroundLocator.unRegisterLocationUpdate();
    }
  }
}
