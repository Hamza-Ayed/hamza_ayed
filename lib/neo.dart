import 'package:flutter/material.dart';

class NeomphormDark extends StatelessWidget {
  // final String title;
  final double width;
  final Widget child;
  final Color color;
  const NeomphormDark(
      {Key? key,
      // required this.title,
      required this.width,
      required this.child,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: MediaQuery.of(context).size.width * width,
        child: Center(child: child),
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(12),
          // shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: color,
              offset: const Offset(4, 7),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            const BoxShadow(
              color: Colors.white12,
              offset: Offset(-7, -4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ],
        ),
      ),
    );
  }
}
