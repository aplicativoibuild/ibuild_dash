import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ibuild_dash/src/models/user.dart';

class UserService {

  Future<List<UserModel>> getUsers() async {
    List<UserModel> list = [];
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'dashboardibuild@gmail.com',
        password: 'd#!235*ah',
      );
      var res = await FirebaseFirestore.instance.collection('users').get();
       for (var d in res.docs) {
         list.add(UserModel.fromJson(d.data()));
       }
       return list;
    } catch (e) {
      print('Erro ao obter users $e');
      return [];
    }
  }


    Future<List<UserModel>> getPayingUsers() async {
    List<UserModel> list = [];
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'dashboardibuild@gmail.com',
        password: 'd#!235*ah',
      );
      var res = await FirebaseFirestore.instance.collection('users').where("subscribed",isEqualTo: true).get();
       for (var d in res.docs) {
         list.add(UserModel.fromJson(d.data()));
       }
       return list;
    } catch (e) {
      print('Erro ao obter users $e');
      return [];
    }
  }

    Future<int> getNotPayingUsers() async {
    List<UserModel> list = [];
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'dashboardibuild@gmail.com',
        password: 'd#!235*ah',
      );
      var res = await FirebaseFirestore.instance.collection('users').count().get();
      var res2 = await FirebaseFirestore.instance.collection('users').where("subscribed",isEqualTo: true).count().get();

      return (res.count - res2.count);
    } catch (e) {
      print('Erro ao obter users $e');
      return 0;
    }
  }




}
