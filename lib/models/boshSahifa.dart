import 'package:dars24/models/yangi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoshSahifa extends StatefulWidget {
  const BoshSahifa({Key? key}) : super(key: key);

  @override
  _BoshSahifaState createState() => _BoshSahifaState();
}

class _BoshSahifaState extends State<BoshSahifa> {
  DateTime today = DateTime.now();
  DateTime monthes = DateTime.now();

  DateTime fullTime = DateTime.now();
  TimeOfDay timeNow = TimeOfDay.now();

  int timeHour = DateTime.now().hour;
  bool? value = false;
  bool? value1 = false;
  bool? value2 = false;
  bool? value3 = false;
  bool? value4 = false;
  bool qiymat = false;
  bool qiymat1 = false;
  bool qiymat2 = false;
  bool qiymat3 = false;
  @override
  Widget build(BuildContext context) {
    int month = today.month;
    int day = today.day;
    int lastmonth = monthes.month;
    int lastyear = monthes.day;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purpleAccent.shade100, Colors.blue.shade700],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          )
        ),
        height: 820.0,
        width: 400.0,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
              child: Container(
                height: 80.0,
                width: 400.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.menu, size: 28.0,color: Colors.white,),),
                    Text("WALLET", style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),),
                    IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => YangYangi()));
                        },
                        icon: Icon(Icons.notifications, size: 22.0, color: Colors.white,),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                height: 210.0,
                width: 380.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.orange.shade300, Colors.deepOrange.shade400],
                    begin: Alignment.centerLeft
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 20.0),
                      child: Container(
                        height: 50.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/logo.png"),
                            fit: BoxFit.fill
                          ),
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 15.0, bottom: 5.0),
                      child: Text("4000   1234   5678   9010", style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500, color: Colors.white),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("VALID FROM", style: TextStyle(fontSize: 10.0, color: Colors.white),),
                              Text("$month/$day", style: TextStyle(color: Colors.white, fontSize: 16.0),),
                            ],
                          ),
                          SizedBox(width: 20.0,),
                          Column(
                            children: [
                              Text("VALID THRU", style: TextStyle(fontSize: 10.0, color: Colors.white),),
                              Text("$lastmonth/$lastyear", style: TextStyle(color: Colors.white, fontSize: 16.0),),
                            ],
                          ),
                          SizedBox(width: 110.0,),
                          Container(
                            height: 35.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/55.png"),
                                fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("Nikola Stojanovic", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Container(
                height: 80.0,
                width: 380.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.purple.withOpacity(0.1),
                            child: IconButton(
                              onPressed: (){
                                showDatePicker(
                                    context: context,
                                    initialDate: today,
                                    firstDate: DateTime(2000,),
                                    lastDate: DateTime(2090,)
                                ).then((value) {
                                  setState(() {
                                    today = value!;
                                  });
                                });
                              },
                              icon: Icon(Icons.calendar_today, color: Colors.deepPurple,),
                            ),
                          ),
                          SizedBox(height: 5.0,),
                          Text("Calendar", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.yellowAccent.withOpacity(0.4),
                            child: IconButton(
                              onPressed: (){
                                showDatePicker(
                                  context: context,
                                  initialDate: today,
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2090),
                                ).then((value) {
                                  setState(() {
                                    monthes = value!;
                                  });
                                });
                              },
                              icon: Icon(Icons.calendar_today_outlined, color: Colors.yellow.shade700,),
                            ),
                          ),
                          SizedBox(height: 5.0,),
                          Text("Last Calendar", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.purpleAccent.withOpacity(0.2),
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  showTimePicker(
                                    context: context,
                                    initialTime: timeNow,
                                  );
                                });
                              },
                              icon: Icon(Icons.watch_later_outlined, color: Colors.purpleAccent,),
                            ),
                          ),
                          SizedBox(height: 5.0,),
                          Text("Clock", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.greenAccent.withOpacity(0.2),
                            child: IconButton(
                              onPressed: (){
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext builder) {
                                      return Container(
                                        height: 250.0,
                                        child: CupertinoDatePicker(
                                          mode: CupertinoDatePickerMode.dateAndTime,
                                          onDateTimeChanged: (picked){
                                            setState(() {
                                              fullTime = picked;
                                            });
                                          },
                                          initialDateTime: fullTime,
                                          minimumYear: 2000,
                                          maximumYear: 2025,
                                        ),
                                      );
                                    });
                              },
                              icon: Icon(Icons.calendar_view_day_outlined, color: Colors.greenAccent,),
                            ),
                          ),
                          SizedBox(height: 5.0,),
                          Text("Calendar", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Container(
                height: 350.0,
                width: 380.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Transactions",style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                          Container(
                            alignment: Alignment.center,
                            height: 26.0,
                            width: 65.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.0),
                              border: Border.all(color: Colors.black, width: 1.0),
                            ),
                            child: TextButton(
                              onPressed: (){},
                              child: Text("MORE", style: TextStyle(fontSize: 10.0),),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 302.0,
                      child: ListView(
                        padding: EdgeInsets.all(0),
                        children: [
                          CheckboxListTile(
                            title: Text("John Doe", style: TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text("Trasfered"),
                              secondary: CircleAvatar(
                                backgroundColor: Colors.yellowAccent.withOpacity(0.4),
                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.transform_rounded, color: Colors.yellow.shade700,),
                                ),
                              ),
                              value: value,
                              onChanged: (e){
                                setState(() {
                                  value = e;
                                });
                              }),
                          CheckboxListTile(
                              title: Text("Amelia Nelson", style: TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text("Added to Wallet"),
                              secondary: CircleAvatar(
                                backgroundColor: Colors.purpleAccent.withOpacity(0.4),
                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.account_balance_wallet_outlined, color: Colors.purpleAccent.shade700,),
                                ),
                              ),
                              value: value1,
                              onChanged: (a){
                                setState(() {
                                  value1 = a;
                                });
                              }),
                          CheckboxListTile(
                              title: Text("Martin Anderson", style: TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text("Sent"),
                              secondary: CircleAvatar(
                                backgroundColor: Colors.purple.withOpacity(0.4),
                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.send_and_archive_rounded, color: Colors.deepPurple.shade700,),
                                ),
                              ),
                              value: value2,
                              onChanged: (b){
                                setState(() {
                                  value2 = b;
                                });
                              }),
                          CheckboxListTile(
                              title: Text("John Doe", style: TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text("Exchanged"),
                              secondary: CircleAvatar(
                                backgroundColor: Colors.greenAccent.withOpacity(0.4),
                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.transform_sharp, color: Colors.greenAccent.shade700,),
                                ),
                              ),
                              value: value3,
                              onChanged: (c){
                                setState(() {
                                  value3 = c;
                                });
                              }),
                          CheckboxListTile(
                              title: Text("Amelia Nelson", style: TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text("Added to Wallet"),
                              secondary: CircleAvatar(
                                backgroundColor: Colors.purpleAccent.withOpacity(0.4),
                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.account_balance_wallet, color: Colors.purple.shade700,),
                                ),
                              ),
                              value: value4,
                              onChanged: (l){
                                setState(() {
                                  value4 = l;
                                });
                              }),
                          SwitchListTile(
                    value: qiymat,
                    onChanged: (t){
                      setState(() {
                        qiymat = t;
                      });
                    },
                  title: Text("John Doe", style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Transfered"),
                  secondary: CircleAvatar(
                    backgroundColor: Colors.purple.withOpacity(0.3),
                    child: Icon(Icons.transform_rounded, color: Colors.deepPurple,),
                  ),
                ),
                          SwitchListTile(
                            value: qiymat1,
                            onChanged: (q){
                              setState(() {
                                qiymat1 = q;
                              });
                            },
                            title: Text("Amelia Nelson", style: TextStyle(fontWeight: FontWeight.bold),),
                            subtitle: Text("Added to Wallet"),
                            secondary: CircleAvatar(
                              backgroundColor: Colors.yellow.withOpacity(0.3),
                              child: Icon(Icons.transform_rounded, color: Colors.yellow[800],),
                            ),
                          ),
                          SwitchListTile(
                            value: qiymat2,
                            onChanged: (u){
                              setState(() {
                                qiymat2 = u;
                              });
                            },
                            title: Text("Martin Anderson", style: TextStyle(fontWeight: FontWeight.bold),),
                            subtitle: Text("Sent"),
                            secondary: CircleAvatar(
                              backgroundColor: Colors.purpleAccent.withOpacity(0.3),
                              child: Icon(Icons.transform_rounded, color: Colors.purple,),
                            ),
                          ),
                          SwitchListTile(
                            value: qiymat3,
                            onChanged: (a){
                              setState(() {
                                qiymat3 = a;
                              });
                            },
                            title: Text("John Doe", style: TextStyle(fontWeight: FontWeight.bold),),
                            subtitle: Text("Transfered"),
                            secondary: CircleAvatar(
                              backgroundColor: Colors.blueAccent.withOpacity(0.3),
                              child: Icon(Icons.transform_rounded, color: Colors.blue,),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
