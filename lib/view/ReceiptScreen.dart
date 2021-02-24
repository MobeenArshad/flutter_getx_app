import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class ReceiptScreen extends StatelessWidget {
  textstyle(){
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: DottedBorder(
            padding: EdgeInsets.all(15.5),
            borderType: BorderType.RRect,
            strokeWidth: 1.5,
            dashPattern: [5,10],
            child: Column(
              children: [
                Text('Loreum Ispum Shop',
                    style: textstyle()
                ),
                SizedBox(height: 10,),
                Text('Address:'),
                Text('Phone:'),
                Text('-'),
                SizedBox(height: 20,),
                Text('No,01.02.03'),
                SizedBox(height: 20,),
                Text('*********************************************'),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('No,01.02.03'),
                      Text('Loreum Ispum'),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text('################################'),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('No,01.02.03'),
                    Text('Loreum Ispum'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('No,01.02.03'),
                    Text('Loreum Ispum'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('No,01.02.03'),
                    Text('Loreum Ispum'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('No,01.02.03'),
                    Text('Loreum Ispum'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('No,01.02.03'),
                    Text('Loreum Ispum'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('No,01.02.03'),
                    Text('Loreum Ispum'),
                  ],
                ),
                SizedBox(height: 20,),
                Text('===================================='),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Total',
                        style: textstyle()
                      ),
                      Text('Loreum Ispum',
                          style: textstyle()
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('No,01.02.03'),
                    Text('Loreum Ispum'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('No,01.02.03'),
                    Text('Loreum Ispum'),
                  ],
                ),
                SizedBox(height: 15,),
                Text('shdfdsbfsbkfbjksbfjsbfkjbskbfdjfksjfjkfsjdjksk'),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Tax:'),
                    Text('2156'),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}