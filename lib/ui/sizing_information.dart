import 'package:flutter/material.dart';
import 'device_screen_type.dart';


class SizingInformation {
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation({
    this.orientation,
    this.deviceScreenType,
    this.screenSize,
    this.localWidgetSize,
  });

  @override
  String toString() {
    return '''
    Orientation: $orientation,
    DeviceScreenType: $deviceScreenType,
    ScreenSize: $screenSize,
    LocalWidgetSize: $localWidgetSize''';
  }
}
