import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(300.0),
            child: AppBar(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              backgroundColor: Colors.white54,
              toolbarHeight: 300.0,
              actions: [
                Column(
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        IconButton(
                            color: Colors.black,
                            iconSize: 35.0,
                            onPressed: () {
                              print("button pressed");
                            },
                            icon: Icon(Icons.account_circle_sharp)),
                        SizedBox(
                          width: 120.0,
                        ),
                        TextButton(
                          onPressed: () {
                            print("button pressed");
                          },
                          child: Text(
                            'Months',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                          ),
                        ),
                        SizedBox(
                          width: 111.4,
                        ),
                        IconButton(
                            color: Colors.black,
                            iconSize: 35.0,
                            onPressed: () {
                              print("button pressed");
                            },
                            icon: Icon(Icons.add_alert)),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Center(
                      child: Text(
                        "Account Balance",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Center(
                      child: Text(
                        "₹35000",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.green,
                          ),
                          height: 80.0,
                          width: 180.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.red,
                          ),
                          height: 80.0,
                          width: 180.0,
                        )
                      ],
                    )
                  ],
                ),
              ],
            )),
        body: ListView(children: [
          Container(
            height: 15.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 30.0,
              ),
              Text(
                "Today",
                style: TextStyle(color: Colors.grey, fontSize: 18.0),
              ),
              SizedBox(
                width: 60.0,
              ),
              Text(
                "Week",
                style: TextStyle(color: Colors.grey, fontSize: 18.0),
              ),
              SizedBox(
                width: 60.0,
              ),
              Text(
                "Month",
                style: TextStyle(color: Colors.grey, fontSize: 18.0),
              ),
              SizedBox(
                width: 40.0,
              ),
              Text(
                "Year",
                style: TextStyle(color: Colors.grey, fontSize: 18.0),
              ),
              SizedBox(
                width: 30.0,
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 25.0,
              ),
              Text(
                "Recent Transaction",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0),
              ),
              SizedBox(width:100.0 ,),
              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.white70),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the value for the desired roundness
                  ),
                ),
                ),
                  onPressed: () {
                    print("button pressed");
                  },
                  child: Text("See All", style: TextStyle(color: Colors.deepPurple),))
            ],
          ),
        ]),
    bottomNavigationBar: BottomAppBar(
    ),
    );
  }
}
