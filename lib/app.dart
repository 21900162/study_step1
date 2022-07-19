import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_step1/home.dart';

class MailApp extends StatelessWidget {
  const MailApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if(snapshot.hasError){
          return Center(child: const Text('Firebase load Failed'));
        }
        if(snapshot.connectionState == ConnectionState.done){
          return HomePage();
        }
        return const CircularProgressIndicator();
      },

    );
  }
}
