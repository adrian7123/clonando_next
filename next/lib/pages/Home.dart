import 'package:flutter/material.dart';
import 'package:next/utils/constants.dart';
import 'package:next/widgets/BlocoWidget.dart';
import 'package:next/widgets/ItemsWidget.dart';
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
                      child: FlutterLogo(size: 50),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25),
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

            ItemsWidget(
              col1: [
                Icons.attach_money,
                'SALDO E ESTRATO'
              ],
              col2: [
                Icons.compare_arrows,
                'TRANSFERENCIAS'
              ],
            ),
            ItemsWidget(
              col1: [
                Icons.calendar_view_day,
                'PAGAR CONTA'
              ],
              col2: [
                Icons.phone_android,
                'RECARGA CELULAR'
              ],
            ),
            ItemsWidget(
              col1: [
                Icons.credit_card,
                'CARTÃO'
              ],
              col2: [
                Icons.star_border,
                'MIMOS'
              ],
            ),
            ItemsWidget(
              col1: [
                Icons.favorite_border,
                'OBJETIVOS'
              ],
              col2: [
                Icons.hourglass_empty,
                'FLOW'
              ],
            ),
          ],
        ),
        )
      )
    );
  }
}

