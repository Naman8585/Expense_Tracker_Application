import 'package:flutter/material.dart';

class IncomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          centerTitle: true,
          title: Text(
            "Income",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurpleAccent,
          elevation: 0.0,
        ),
      body:  ListView(
        children: [ Column(
          children: [
            Container(
              height: 300.0,
              width: 700.0,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ Padding(
                  padding: const EdgeInsets.only(top: 150.0,left: 25.0),
                  child: Text(
                    "How much?",
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 20.0,

                    ),
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,left: 25.0),
                    child: Text(
                      "₹ 0",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 70.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Category",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Description",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Wallet",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0),
              child: ElevatedButton(
                onPressed: () {
                  print("button pressed");
                },
                child: Text("Continue"),
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.only(
                        left: 148.0, right: 148.0, top: 20.0, bottom: 20.0),
                  ),
                ),
              ),
            )
          ],
        ),
        ]
      ),
    );
  }
}
