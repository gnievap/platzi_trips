import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  final bool mini;
  final IconData icon;
  final double iconSize;
  final Color color;

  const CircleButton(this.mini, this.icon, this.iconSize, this.color, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _CircleButton();
  }

}

class _CircleButton extends State<CircleButton> {

  void onPressedButton() {

  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FloatingActionButton(
          backgroundColor: widget.color,
          mini: widget.mini,
          onPressed: onPressedButton,
          child: Icon(
            widget.icon,
            size: widget.iconSize,
            color: const Color(0xFF4268D3),
          ),
        )
    );
  }
}