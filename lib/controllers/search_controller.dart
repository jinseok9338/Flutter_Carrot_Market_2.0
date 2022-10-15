import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../constant.dart';
import '../models/user.dart';


class SearchController extends GetxController {
  final Rx<List<User>> _searchedUsers = Rx<List<User>>([]);

  List<User> get searchedUsers => _searchedUsers.value;

  searchUser(String typedUser) async {
    _searchedUsers.bindStream(firestore
        .collection('users')
        .where('name', isGreaterThanOrEqualTo: typedUser)
        .snapshots()
        .map((QuerySnapshot query) {
      List<User> retVal = [];
      for (var elem in query.docs) {
        retVal.add(User.fromSnap(elem));
      }
      List<User> outputList = retVal.where((item) => item.uid != authController.user.uid).toList();
      return outputList;
    }));
  }
}