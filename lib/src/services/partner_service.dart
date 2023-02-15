import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ibuild_dash/src/models/partner.dart';

class PartnerService {

  Future<List<PartnerModel>> getPartners() async {
    List<PartnerModel> list = [];
    try {
      var res = await FirebaseFirestore.instance.collection('partners').get();
       for (var d in res.docs) {
         list.add(PartnerModel.fromJson(d.data()));
       }
       return list;
    } catch (e) {
      print('Erro ao obter partner $e');
      return [];
    }
  }

}
