import 'package:flutter/material.dart';
import 'package:next/components/actions.dart';
import 'package:next/utils/constants.dart';
import 'package:next/widgets/BlocoWidget.dart';
import 'package:next/widgets/imageWidget.dart';
import 'package:next/widgets/myAppBar.dart';

class HomePage extends StatefulWidget {
   

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: back_color,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
          children: [
            MyAppBar(),
            BlocoWidget(
              children: [
                Row(
                  children: [
                    Container(
                      // User Image
                      child: ImageWidget(),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text('ADRIAN BUENO',  style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20))
                    ),
                  ],
                ),
                Container(
                  child: Icon(Icons.arrow_forward_ios)
                )
              ],
            ),

            BlocoWidget(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('SALDO DE CONTA CORRENTE', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                    Text('R\$ $saldo', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800))
                  ],
                ),

                Container(
                  child: Icon(Icons.visibility_off)
                )
              ],
            ),
            ActionsWidget(),
          ],
        ),
        )
      )
    );
  }
}

