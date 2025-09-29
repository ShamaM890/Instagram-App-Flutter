import 'package:flutter/cupertino.dart';

class MyCircle extends StatelessWidget {
  final String child;

  const MyCircle({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: CupertinoColors.systemRed,
        ),
        child: Center(
          child: Text(
            child,
            style: TextStyle(color: CupertinoColors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
