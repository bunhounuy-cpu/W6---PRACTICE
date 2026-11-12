import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: ButtonsPage()),
  );
}

enum ButtonType { primary, secondary, disabled }

enum IconPosition { left, right }

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom buttons'),
        backgroundColor: const Color(0xFFFFF7FF),
      ),
      backgroundColor: const Color(0xFFFFF7FF),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            SizedBox(height: 20),

            CustomButton(
              label: 'Submit',
              icon: Icons.check,
              type: ButtonType.primary,
            ),

            SizedBox(height: 15),

            CustomButton(
              label: 'Time',
              icon: Icons.access_time,
              type: ButtonType.secondary,
              iconPosition: IconPosition.right,
            ),

            SizedBox(height: 15),

            CustomButton(
              label: 'Account',
              icon: Icons.account_balance,
              type: ButtonType.disabled,
              iconPosition: IconPosition.right,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType type;

  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.iconPosition = IconPosition.left,
    this.type = ButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color foregroundColor;

    switch (type) {
      case ButtonType.primary:
        backgroundColor = const Color(0xFF2196F3);
        foregroundColor = Colors.white;
        break;

      case ButtonType.secondary:
        backgroundColor = const Color(0xFF4CAF50);
        foregroundColor = Colors.white;
        break;

      case ButtonType.disabled:
        backgroundColor = const Color(0xFFE0DCE2);
        foregroundColor = Colors.grey;
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (iconPosition == IconPosition.left) ...[
            Icon(icon, color: foregroundColor, size: 16),
            const SizedBox(width: 5),
          ],

          Text(label, style: TextStyle(color: foregroundColor, fontSize: 12)),

          if (iconPosition == IconPosition.right) ...[
            const SizedBox(width: 5),
            Icon(icon, color: foregroundColor, size: 16),
          ],
        ],
      ),
    );
  }
}
