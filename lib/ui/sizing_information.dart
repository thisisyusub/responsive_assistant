import 'package:flutter/material.dart';
import 'device_screen_type.dart';

/// It is used by [ResponsiveAssistant] to provide information about [Orientation], [DeviceScreenType], [ScreenSize]
/// and [LocalWidgetSize].
/// can be used to provide responsiveness according to calculations.
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
