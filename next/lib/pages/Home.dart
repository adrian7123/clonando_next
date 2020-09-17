import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {
    Color _corPrimary = Color.fromRGBO(93, 188, 210, 1); 
    double _saldo = 0;

  @override
  Widget build(BuildContext context) {
    this._saldo = 1000.00;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _corPrimary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('next', style: TextStyle(color: Colors.black)),
            Text('next', style: TextStyle(color: Colors.black)),
            Text('next', style: TextStyle(color: Colors.black)),
          ],
        ),
      ), 
      body: Container(
        color: _corPrimary,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: .5),
                ),
              ),
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        child: FlutterLogo(size: 50,),
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
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: .5),
                ),
              ),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('SALDO DE CONTA CORRENTE', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                      Text('R\$ $_saldo', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800))
                    ],
                  ),
                  Container(
                    child: Icon(Icons.visibility_off)
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}