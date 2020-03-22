
import 'dart:async';
 
import 'package:cloud_firestore/cloud_firestore.dart';

 
class Crud {

  Future<void> addData(String token) async {
    
      Firestore.instance.collection('pushtokens').add({'devtoken': token}).catchError((e) {
         print(e);
       });
  
  }
}