import 'package:flutter/material.dart';

class BlocoWidget extends StatefulWidget {
  final List<Widget> children;

  BlocoWidget({this.children});

  @override
  _BlocoWidgetState createState() => _BlocoWidgetState();
  }

  class _BlocoWidgetState extends State<BlocoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: .5),
        ),
      ),
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: widget.children
      ),
    );
  }
}