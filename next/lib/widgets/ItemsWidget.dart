import 'package:flutter/material.dart';
import 'package:next/utils/constants.dart';



class ItemsWidget extends StatefulWidget {
  /// um icone e um texto 
  final List col1;
  
  /// um icone e um texto 
  final List col2;

  ItemsWidget({this.col1, this.col2});

  @override
  _ItemsWidgetState createState() => _ItemsWidgetState();
  }

  class _ItemsWidgetState extends State<ItemsWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    
    return Container(
      height: height * .22,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Item(
            icon: widget.col1[0],
            text: widget.col1[1],
          ),
          LinhaVertical(),
          Item(
            icon: widget.col2[0],
            text: widget.col2[1],
            
          ),
        ]
      )
    );
  }
}

class LinhaVertical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: 1,
      child: Container(
        color: border_color
      ),

    );
  }
}

class Item extends StatelessWidget {
  final IconData icon;
  final String text;

  Item({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width / 2.4,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: border_color, width: 2))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(this.icon)
          ),
          Text(this.text),
        ]
      )
    );
  }
}