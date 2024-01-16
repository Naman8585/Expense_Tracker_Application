import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 0.0),
                  child: IconButton(
                      onPressed: () {
                        print("Button pressed");
                      },
                      iconSize: 90.0,
                      icon: Icon(Icons.account_circle_sharp)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Usermame",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Khushi Sharma",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: IconButton(
                      onPressed: () {
                        print("Button pressed");
                      },
                      iconSize: 35.0,
                      icon: Icon(Icons.edit)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[300],
                ),
                height: 330.0,
                width: 350.0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10.0, right:10.0, bottom: 10.0,),
                                decoration: BoxDecoration(
                                    color: Colors.deepPurpleAccent[100],
                                    borderRadius: BorderRadius.circular(15.0)),
                                height: 50.0,
                                width: 50.0,
                                child: Icon(
                                  Icons.account_balance_wallet_sharp,
                                  color: Colors.deepPurple,
                                  size: 30.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  "Account",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10.0, right:10.0, bottom: 10.0, top: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.deepPurpleAccent[100],
                                    borderRadius: BorderRadius.circular(15.0)),
                                height: 50.0,
                                width: 50.0,
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.deepPurple,
                                ),
                              ),
                              Text(
                                "Settings",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10.0, right:10.0, bottom: 10.0, top: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.deepPurpleAccent[100],
                                    borderRadius: BorderRadius.circular(15.0)),
                                height: 50.0,
                                width: 50.0,
                                child: Icon(
                                  Icons.upload,
                                  color: Colors.deepPurple,
                                ),
                              ),
                              Text(
                                "Export Data",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10.0, right:10.0, bottom: 10.0, top: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.red[100],
                                    borderRadius: BorderRadius.circular(15.0)),
                                height: 50.0,
                                width: 50.0,
                                child: Icon(
                                  Icons.logout_sharp,
                                  color: Colors.red,
                                ),
                              ),
                              Text(
                                "Logout",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
