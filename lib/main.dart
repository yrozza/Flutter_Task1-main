import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AccountPage(),
    );
  }
}

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      appBar: AppBar(
        title: Text('Account',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w600),),
        centerTitle: true,
        backgroundColor: Colors.grey.shade400,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
            SizedBox(height: 20),
            Text(
              'Youssef Ahmed',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Backend Developer',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 30),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.blue.shade700),
                title: Text('+01225091687 '),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue.shade700),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.blue.shade700),
                title: Text('youssefrozza@gmail.com'),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue.shade700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
