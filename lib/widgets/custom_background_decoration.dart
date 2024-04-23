import 'package:flutter/cupertino.dart';

class CustomBackgroundDecoration extends StatelessWidget {
  final String imagePath;
  final Widget child;
  const CustomBackgroundDecoration({super.key, required this.imagePath, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildBackgroundDecoration(),
      child: child,
    );
  }

  BoxDecoration _buildBackgroundDecoration() {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.contain,
      ),
    );
  }
}
