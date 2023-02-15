import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ibuild_dash/src/models/comment.dart';

class CommentsService {

  Future<List<CommentModel>> getComments() async {
    List<CommentModel> list = [];
    try {
      var res = await FirebaseFirestore.instance.collection('comments').get();
       for (var d in res.docs) {
         list.add(CommentModel.fromJson(d.data()));
       }
       return list;
    } catch (e) {
      print('Erro ao obter partner $e');
      return [];
    }
  }

}
