import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List users = [];
  CollectionReference usersref = FirebaseFirestore.instance.collection('IRAQI');
  getdata() async {
    var responsebody = await usersref.get();
    responsebody.docs.forEach((element) {
      setState(() {
        users.add(element.data());
      });
    });
    print(users);
  }

  @override
  void initState() {
    getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('menu'),
        ),
        body: Column(
          children: [
            ListView.builder(
                itemCount: (snapshot.data! as QuerySnapshot).docs.length,
                itemBuilder: (context, i) {
                  return Text((users.length).toString());
                })
          ],
        ));
  }
}
