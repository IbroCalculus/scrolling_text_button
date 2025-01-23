
# Scrolling Text Button

[![pub package](https://img.shields.io/pub/v/scrolling_text_button.svg)](https://pub.dev/packages/scrolling_text_button) [![License: GNU](https://img.shields.io/badge/License-GNU-blue.svg)](https://opensource.org/licenses/GPL-3.0)


A Flutter package that provides a customizable button with horizontally scrolling text for when the text exceeds the maximum width.

---

## 🌟 Getting Started

To start using this package, add the `scrolling_text_button` dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  scrolling_text_button: "<latest_release>"
```

---

## 📌 Example Usage

Here is a simple example to get started:

```dart
import 'package:flutter/material.dart';
import 'package:scrolling_text_button/scrolling_text_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrolling Text Button Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ScrollingTextButtonExample(),
    );
  }
}

class ScrollingTextButtonExample extends StatelessWidget {
  const ScrollingTextButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scrolling Text Button Example"),
      ),
      body: Center(
        child: ScrollingTextButton(
          label: "Click Me, hello I am a test button",
          onPressed: () {
            print("You clicked the button");
          },
        ),
      ),
    );
  }
}
```

---

## 📝 Documentation

### `ScrollingTextButton` Widget

| Property        | Type                 | Description                                                                                  | Default Value       |
|-----------------|----------------------|----------------------------------------------------------------------------------------------|---------------------|
| `label`         | `String`             | The text to display inside the button.                                                      | `null` (required)   |
| `onPressed`     | `VoidCallback`       | The callback function triggered when the button is pressed.                                 | `null` (required)   |
| `color`         | `Color`              | The background color of the button.                                                         | `Colors.blue`       |
| `textStyle`     | `TextStyle?`         | The style of the button's text.                                                             | Bold white text     |
| `borderRadius`  | `double`             | The radius of the button's rounded corners.                                                 | `8.0`               |
| `padding`       | `EdgeInsetsGeometry` | The internal padding of the button.                                                         | Symmetric padding   |
| `elevation`     | `double`             | The elevation (shadow depth) of the button.                                                 | `2.0`               |
| `maxWidthValue` | `double`             | The maximum width of the button, after which the text will start scrolling horizontally.     | `150`               |

---

## Features

1. **Text Scrolling**: The text scrolls horizontally if it exceeds the button's maximum width.
2. **Customizable**:
   - Change text style, color, and size.
   - Set custom padding, elevation, and border radius.
3. **Compact API**: Easy to use and integrate with any Flutter app.

---

## Issues

Found a bug or have a feature request? Please file an issue on our [GitHub repository](https://github.com/IbroCalculus/scrolling_text_button/issues).

---

## Want to Contribute?

We welcome contributions! Check out our [contribution guide](CONTRIBUTING.md) and feel free to send a [pull request](https://github.com/IbroCalculus/scrolling_text_button/pulls).

---

## License

This package is licensed under the [MIT License](https://opensource.org/licenses/MIT).
