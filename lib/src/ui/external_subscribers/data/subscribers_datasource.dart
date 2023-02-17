import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'model/subscribers_model.dart';

abstract class ISubscribersDataSource {
  Future<List<SubscribersModel>> getSubscribers();
  Future<bool> setSubscribers(SubscribersModel model);
}

class SubscribersDataSource implements ISubscribersDataSource {
  @override
  Future<List<SubscribersModel>> getSubscribers() async {
    List<SubscribersModel> list = [];
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'dashboardibuild@gmail.com',
        password: 'd#!235*ah',
      );
      var res =
          await FirebaseFirestore.instance.collection('subscribers').get();
      for (var d in res.docs) {
        list.add(SubscribersModel.fromJson(d.data()));
      }
      return list;
    } catch (e) {
      return [];
    }
  }

  @override
  Future<bool> setSubscribers(SubscribersModel model) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'dashboardibuild@gmail.com',
        password: 'd#!235*ah',
      );

      var user = await FirebaseFirestore.instance
          .collection('users')
          .where('email', isEqualTo: model.email)
          .get();
      if (user.docs.first.exists) {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(user.docs.first.id)
            .update({'subscribed': true});

        return true;
      } else {
        return false;
      }

      // await FirebaseFirestore.instance
      //     .collection('subscribers')
      //     .add(model.toJson());

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
