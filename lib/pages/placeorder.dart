import 'package:ecomerce_app/pages/payment.dart';
import 'package:ecomerce_app/widgets/placeorderwidget/placeorderappbar.dart';
import 'package:ecomerce_app/widgets/placeorderwidget/placeorderitem.dart';
import 'package:ecomerce_app/widgets/placeorderwidget/placeordersummary.dart';
import 'package:flutter/material.dart';



class summary extends StatefulWidget {
  const summary({super.key});

  @override
  State<summary> createState() => _summaryState();
}

class _summaryState extends State<summary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SumAppbar(),
            Container(
              height: 1000,
               child: Column(
                children: [
                  summaryisi(),
                  summaryorder(),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                     height: 60,
              width: 300,
                    child: ElevatedButton(
                      
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => selectpay()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(0, 80, 184,5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),
                      child: Text('Payment',
                      style: TextStyle(fontSize: 20),
                      selectionColor: Colors.white,
                      ),
                    )),
                ],
               ),
            ),
            
          ],
        ),
        
      ),
    );
  }
}