import 'package:flutter_test/flutter_test.dart';
import 'package:scrolling_text_button/scrolling_text_button.dart';
import 'package:flutter/material.dart';

void main() {
  group('ScrollingTextButton Tests', () {
    testWidgets('Renders the button with the correct label', (WidgetTester tester) async {
      // Arrange
      const testLabel = 'Test Button';
      var buttonPressed = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ScrollingTextButton(
              label: testLabel,
              onPressed: () {
                buttonPressed = true;
              },
            ),
          ),
        ),
      );

      // Act
      final buttonFinder = find.text(testLabel);

      // Assert
      expect(buttonFinder, findsOneWidget);
      expect(find.byType(ScrollingTextButton), findsOneWidget);

      // Act - Tap the button
      await tester.tap(buttonFinder);
      await tester.pump();

      // Assert the onPressed callback was triggered
      expect(buttonPressed, isTrue);
    });

    testWidgets('Applies maxWidth constraint correctly', (WidgetTester tester) async {
      // Arrange
      const testLabel = 'A very long text that exceeds the width limit';
      const maxWidthValue = 150.0;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ScrollingTextButton(
              label: testLabel,
              onPressed: () {},
              maxWidthValue: maxWidthValue,
            ),
          ),
        ),
      );

      // Act
      final containerFinder = find.ancestor(
        of: find.text(testLabel),
        matching: find.byType(Container),
      );

      // Assert
      final container = tester.widget<Container>(containerFinder);
      final constraints = container.constraints;

      expect(constraints?.maxWidth, maxWidthValue);
    });

    testWidgets('Text scrolls horizontally when it exceeds maxWidth', (WidgetTester tester) async {
      // Arrange
      const testLabel = 'This is a very long text that needs to scroll horizontally';
      const maxWidthValue = 150.0;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ScrollingTextButton(
              label: testLabel,
              onPressed: () {},
              maxWidthValue: maxWidthValue,
            ),
          ),
        ),
      );

      // Act
      final scrollFinder = find.byType(SingleChildScrollView);

      // Assert
      expect(scrollFinder, findsOneWidget);

      // Ensure text fits inside the maxWidth constraint by being scrollable
      final scrollView = tester.widget<SingleChildScrollView>(scrollFinder);
      expect(scrollView.scrollDirection, Axis.horizontal);
    });
  });
}
