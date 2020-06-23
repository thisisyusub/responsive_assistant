import 'package:flutter/material.dart';
import 'sizing_information.dart';
import 'device_screen_type.dart';

/// A Simple [StatelessWidget] to implement responsiveness

/// [builder] parameter returns relevant information about current device.
class ResponsiveAssistant extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;

  const ResponsiveAssistant({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(
      builder: (context, boxConstraints) {
        var sizingInformation = new SizingInformation(
            orientation: mediaQuery.orientation,
            deviceScreenType: _getDeviceType(mediaQuery),
            screenSize: mediaQuery.size,
            localWidgetSize: Size(
              boxConstraints.maxWidth,
              boxConstraints.maxHeight,
            ));

        return builder(context, sizingInformation);
      },
    );
  }

  DeviceScreenType _getDeviceType(MediaQueryData mediaQuery) {
    var orientation = mediaQuery.orientation;

    double deviceWidth = 0;

    if (orientation == Orientation.landscape) {
      deviceWidth = mediaQuery.size.height;
    } else {
      deviceWidth = mediaQuery.size.width;
    }

    if (deviceWidth > 950) {
      return DeviceScreenType.Desktop;
    } else if (deviceWidth > 600) {
      return DeviceScreenType.Tablet;
    } else {
      return DeviceScreenType.Mobile;
    }
  }
}
