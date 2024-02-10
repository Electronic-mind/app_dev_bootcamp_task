// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 211, 199, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 61, 17, 114),
        title: Text("Profile", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: SizedBox(
        child: Column(
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: double.infinity),
                width: 220,
                height: 220,
                margin: EdgeInsets.only(left: 90, right: 90, top: 30, bottom: 30),
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/profile_img.jpg"),
                ),
              ),
              profileDetails(Icon(Icons.person, color: Colors.white, size: 30,), Text("Name", style: TextStyle(color: Colors.white, fontSize: 20)), Text("Judi Albaghajati", style: TextStyle(color: Colors.white, fontSize: 16)),),
              profileDetails(Icon(Icons.phone, color: Colors.white, size: 30,), Text("Phone Number", style: TextStyle(color: Colors.white, fontSize: 20)), Text("+966 50 123 4567", style: TextStyle(color: Colors.white, fontSize: 16)),),
              profileDetails(Icon(Icons.place, color: Colors.white, size: 30,), Text("Address", style: TextStyle(color: Colors.white, fontSize: 24)), Text("Saudi Arabia", style: TextStyle(color: Colors.white, fontSize: 16)),),
              profileDetails(Icon(Icons.mail, color: Colors.white, size: 30,), Text("Email", style: TextStyle(color: Colors.white, fontSize: 24)), Text("example@example.com", style: TextStyle(color: Colors.white, fontSize: 16)),),
            ],
          ),
      ),
    );
  }

  Container profileDetails(Icon icon, Text title, Text subtitle) {
    return Container(
      constraints: BoxConstraints(maxWidth: double.infinity),
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Card(
        color: Color.fromARGB(255, 61, 17, 114),
        child: ListTile(
          leading: icon,
          title: title,
          subtitle: subtitle,
          trailing: Icon(Icons.arrow_forward_rounded, color: Colors.white,),
        ),
      ),
    );
  }
}