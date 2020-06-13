import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:polskie_parki_narodowe/models/user.dart';
import '../models/entry_model.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  // collection reference
  final CollectionReference parksCollection =
      Firestore.instance.collection('parks');

  Future<void> updateUserData(int result, String gender, String age,
      String education, String inhabitancy, String quarter, String pets) async {
    return await parksCollection.document(uid).setData({
      'result': result,
      'gender': gender,
      'age': age,
      'education': education,
      'inhabitancy': inhabitancy,
      'quarter': quarter,
      'pets': pets
    });
  }

  // parks list from snapshot
  List<Entry> _parksListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      //print(doc.data);
      return Entry(
          result: doc.data['result'] ?? 0,
          gender: doc.data['gender'] ?? 'brak',
          age: doc.data['age'] ?? 'brak',
          education: doc.data['education'] ?? 'brak',
          inhabitancy: doc.data['inhabitancy'] ?? 'brak',
          quarter: doc.data['quarter'] ?? 'brak',
          pets: doc.data['pets'] ?? 'brak');
    }).toList();
  }

  // user data from snapshots
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
        uid: uid,
        result: snapshot.data['result'],
        gender: snapshot.data['gender'],
        age: snapshot.data['age'],
        education: snapshot.data['education'],
        inhabitancy: snapshot.data['inhabitancy'],
        quarter: snapshot.data['quarter'],
        pets: snapshot.data['pets']);
  }

  // get parks stream
  Stream<List<Entry>> get parks {
    return parksCollection.snapshots().map(_parksListFromSnapshot);
  }

  // get user doc stream
  Stream<UserData> get userData {
    return parksCollection.document(uid).snapshots().map(_userDataFromSnapshot);
  }
}
