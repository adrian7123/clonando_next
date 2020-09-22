import 'package:flutter/material.dart';
import 'package:next/utils/constants.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: .5))
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.notifications_none
              ),
              Text(
                'next', 
                style: TextStyle(
                  color: text_color, 
                  fontSize: 20, 
                  fontWeight: FontWeight.bold 
                )
              ),
              Text(
                'ajuda', 
                style: TextStyle(
                  color: text_color, 
                  fontSize: 20, 
                  fontWeight: FontWeight.bold 
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}