import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YangYangi extends StatefulWidget {
  const YangYangi({Key? key}) : super(key: key);

  @override
  _YangYangiState createState() => _YangYangiState();
}

class _YangYangiState extends State<YangYangi> {
  bool qiymat2 = false;
  bool qiymat3 = false;
  bool qiymat4 = false;
  bool qiymat5 = false;
  // <---------------->
  bool qiymat6 = false;
  bool qiymat7 = false;
  bool qiymat8 = false;
  bool qiymat9 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.purpleAccent.shade100, Colors.blue.shade700],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        )),
        height: 820.0,
        width: 400.0,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
              child: Container(
                height: 80.0,
                width: 400.0,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        size: 28.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 60.0,
                    ),
                    Text(
                      "MANAGE WALLET",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
              child: Container(
                height: 295.0,
                width: 380.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.orange,
                        backgroundImage: AssetImage("assets/images/1.jpg"),
                      ),
                      title: Text("EUR - 500.00", style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text("Euro"),
                      trailing: CupertinoSwitch(
                          value: qiymat2,
                          onChanged: (event) {
                            setState(() {
                              qiymat2 = event;
                            });
                          }),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.orange,
                        backgroundImage: AssetImage("assets/images/2.jpg"),
                      ),
                      title: Text("USD - 1050.00", style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text("United States Dollar"),
                      trailing: CupertinoSwitch(
                          value: qiymat3,
                          onChanged: (event1) {
                            setState(() {
                              qiymat3 = event1;
                            });
                          }),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.orange,
                        backgroundImage: AssetImage("assets/images/3.jpg"),
                      ),
                      title: Text("Zar - 500.00", style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text("South Africa Rand"),
                      trailing: CupertinoSwitch(
                          value: qiymat4,
                          onChanged: (event2) {
                            setState(() {
                              qiymat4 = event2;
                            });
                          }),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.orange,
                        backgroundImage: AssetImage("assets/images/4.png"),
                      ),
                      title: Text("INR - 500.00", style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text("Indian Rupee"),
                      trailing: CupertinoSwitch(
                          value: qiymat5,
                          onChanged: (event3) {
                            setState(() {
                              qiymat5 = event3;
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 25.0, bottom: 5.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Inactive Wallet",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0),
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
              child: Container(
                height: 295.0,
                width: 380.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.orange,
                        backgroundImage: AssetImage("assets/images/5.png"),
                      ),
                      title: Text("KES - 500.00", style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text("Kenyan Shilling"),
                      trailing: CupertinoSwitch(
                          value: qiymat6,
                          onChanged: (even) {
                            setState(() {
                              qiymat6 = even;
                            });
                          }),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.orange,
                        backgroundImage: AssetImage("assets/images/6.jpg"),
                      ),
                      title: Text("NGN - 1050.00", style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text("Nigerian Naira"),
                      trailing: CupertinoSwitch(
                          value: qiymat7,
                          onChanged: (even1) {
                            setState(() {
                              qiymat7 = even1;
                            });
                          }),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.orange,
                        backgroundImage: AssetImage("assets/images/7.jpg"),
                      ),
                      title: Text("RWF - 500.00", style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text("Rwandan Franc"),
                      trailing: CupertinoSwitch(
                          value: qiymat8,
                          onChanged: (even2) {
                            setState(() {
                              qiymat8 = even2;
                            });
                          }),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.orange,
                        backgroundImage: AssetImage("assets/images/9.png"),
                      ),
                      title: Text("GBP - 500.00", style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text("Great British Pound"),
                      trailing: CupertinoSwitch(
                          value: qiymat9,
                          onChanged: (even3) {
                            setState(() {
                              qiymat9 = even3;
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
