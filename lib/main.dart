import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int kinlevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Kin ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            kinlevel++;
          });
        },
          child:Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/thumb.jpg"),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
            color: Colors.grey[800],),
            Text("NAME",
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),),
            SizedBox(height: 10.0),
            Text("Kin Drew II",
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 20.0,
                letterSpacing: 2.0,
              ),),
            SizedBox(height: 30.0),
            Text("Current Kin Level",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),),
            SizedBox(height: 10.0),
            Text("$kinlevel",
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 20.0,
                letterSpacing: 2.0,
              ),),
            SizedBox(height: 30.0),

            Row(
              children: [
                Icon(Icons.mail,
                color: Colors.grey,
                ),
                SizedBox(width: 10.0,),
                Text("Kindrew@kin.com",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}


