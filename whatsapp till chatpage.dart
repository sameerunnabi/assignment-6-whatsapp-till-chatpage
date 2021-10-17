main dart
import 'package:login/login.dart';

import 'login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}


homepage

// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:login/pages/chat_page.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> with SingleTickerProviderStateMixin {
  get child => null;
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text("Whatsapp"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text("Camera"),
          Chatpage(),
          Text("status"),
          Text("calls"),
        ],
      ),
    );
  }
}


chatpage

import 'package:flutter/material.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({ Key? key }) : super(key: key);

  @override
  _ChatpageState createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
      child: Column(children: [
        abc("sameer" , "hi usman", "2:04 am" ),
        abc("ali" ,"kese hu", "6:23 am"),
        abc("usman" ,"han bro", "2:56 pm" ),
        abc("tanzeel" ,"bha kia hal hai", "6:04 pm" ),
        abc("ibrahim" ,"puttar", "1:55 pm" ),
        abc("samra" ,"arhe na phr?", "7:45 am" ),
        abc("sameer" ,"nhi ", "9:34 pm" ),
        abc("farah" ,"sahiii", "9:00 pm"),
        abc("abdullah" ,"bhter", "3:44 am" ),
        
      ]
          
    
    ),
      ),
    );  
  }
}

class Colours {
}

Widget abc(String name ,subtitle,time){
  return ListTile(
    title: Text(name),
    subtitle: Text(subtitle),
    tileColor: Colors.blue[50],
    leading: CircleAvatar(
      radius: 10,
      backgroundColor: Color(0XFF075E54),
    ),
    trailing: Column(children: [
     time=  Text(time),
      
    ],),

  );
}
    