# Responsive Assistant

---

A simple dart package that helps you to implement responsiveness.

The package was created based on [Filled Stacks' approach](https://www.youtube.com/watch?v=z7P1OFLw4kY).

---

## Overview 

The package consists of the following:

- **DeviceScreenType** - it is the simple enum that is used to determine type of the screen like desktop, tablet or mobile.

- **SizingInformation** - this class is used to return information about `Orientation`, `DeviceScreenType`, `ScreenSize` and `LocalWidgetSize`.

- **ResponsiveAssistant** - this is the the simple StatelessWidget that returns a widget with the `SizingInformation`.

> Note: `DeviceScreenType` and `SizingInformation` is used by `ResponsiveAssistant`. You just need to use `ResponsiveAssitant` to control responsiveness.

---

## Example

The following example demonstrates the usecase of `ResponsiveAssitant`:

```dart
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveAssistant(
      builder: (context, sizingInformation) {
        return Scaffold(
          body: Column(
            children: [
              Container(
                height: sizingInformation.screenSize.height * 0.2,
                color: Colors.blueGrey,
              ),
              Container(
                height: sizingInformation.screenSize.height * 0.3,
                color: Colors.blue,
              ),
              Container(
                height: sizingInformation.screenSize.height * 0.5,
                color: Colors.pink,
              ),
            ],
          ),
        );
      },
    );
  }
}
```

As you can see, we can get different information from sizingInformation field.

Or, you can use `ResponsiveAssistant` to calculate local widget size:

```dart
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            color: Colors.blueGrey,
            child: ResponsiveAssistant(
              builder: (context, sizingInformation) {
                return Center(
                  child: Container(
                    color: Colors.red,
                    height: sizingInformation.localWidgetSize.height * 0.8,
                    width: sizingInformation.localWidgetSize.width * 0.8,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
```

## Dart Versions
- Dart 2: >= 2.6.0

## Maintainers

- [Kanan Yusubov](https://github.com/KenanYusubov)

