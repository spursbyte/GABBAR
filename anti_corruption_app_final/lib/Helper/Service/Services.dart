import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  Future<void> addQuizData(Map quizData, String quizId) async {
    await FirebaseFirestore.instance
        .collection("Quiz")
        .doc(quizId)
        .set(quizData)
        .catchError((e) {
      print(e.toString());
    });
  }

  Future<void> addComplaintData(Map formData, String formId) async {
    await FirebaseFirestore.instance
        .collection("Complaint")
        .doc(formId)
        .set(formData)
        .catchError((e) {
      print(e.toString());
    });
  }

  Future<void> addQuestionData(Map questionData, String quizId) async {
    await FirebaseFirestore.instance
    .collection("Quiz")
    .doc(quizId)
    .collection("QNA")
    .add(questionData)
    .catchError((e){
      print(e.toString());
    });
  } 

  Future<void> addForumData (blogData) async {
    await FirebaseFirestore.instance
        .collection("Forum")
        .add(blogData)
        .catchError( (e) {
          print(e.toString());
    });
  }

  getQuizData() async {
    return await FirebaseFirestore.instance
        .collection("Quiz")
        .snapshots();
}
  getInsideQuizData(String quizId) async {
    return await FirebaseFirestore.instance
        .collection("Quiz")
        .doc(quizId)
        .collection("QNA")
        .snapshots();
  }

  getForumData() async{
    return await FirebaseFirestore.instance
        .collection("Forum")
        .snapshots();
  }
}


