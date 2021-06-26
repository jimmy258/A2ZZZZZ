import 'dart:developer' as dev;
import 'dart:math';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

class Database {
  Database() {
    _database.setPersistenceEnabled(true);
    _db = _database.reference();
  }

  ///use [Database().loggedKidId]
  Future<bool> updateKidScore1(String kidId, int score) async {
    final kid = await findKid(kidId);
    try {
      await kid.update({'score': score});
      return true;
    } catch (e) {
      dev.log("", error: e);
      return false;
    }
  }

  Future<bool> updateKidScore2(String kidId, int score2) async {
    final kid = await findKid(kidId);
    try {
      await kid.update({'score2': score2});
      return true;
    } catch (e) {
      dev.log("", error: e);
      return false;
    }
  }

  Future<bool> updateKidScore3(String kidId, int score3) async {
    final kid = await findKid(kidId);
    try {
      await kid.update({'score3': score3});
      return true;
    } catch (e) {
      dev.log("", error: e);
      return false;
    }
  }

  Future<bool> updateKidScore4(String kidId, int score4) async {
    final kid = await findKid(kidId);
    try {
      await kid.update({'score4': score4});
      return true;
    } catch (e) {
      dev.log("", error: e);
      return false;
    }
  }

  Future<bool> updateKidScore5(String kidId, int score5) async {
    final kid = await findKid(kidId);
    try {
      await kid.update({'score5': score5});
      return true;
    } catch (e) {
      dev.log("", error: e);
      return false;
    }
  }

  Future<bool> loginParent(String name, String password) async {
    final items = (await _db.once()).value;
    bool isParentFound = false;
    items.forEach((key, value) {
      final parent = items[key];
      final parentName = parent['name'];
      final parentPassword = parent['password'];
      if (parentName == name) {
        if (parentPassword == password) {
          loggedParentId = key;
          isParentFound = true;
        }
      }
    });
    return isParentFound;
  }

  Future<List> parentEmailList() async {
    final items = (await _db.once()).value;
    List<dynamic> ParentsEmails = [];
    items.forEach((key, value) {
      final parent = items[key];
      final parentEmail = parent['email'];
      ParentsEmails.add(parentEmail);
    });
    return ParentsEmails;
  }

  Future<bool> loginKid(String id) async {
    final kidNode = await findKid(id);
    final kid = (await kidNode.once()).value;
    if (kid != null) {
      loggedKidId = kid['id'];
      return true;
    }
    return false;
  }

  Future<bool> loginDoctor(String dname, String dpassword) async {
    final items = (await _db.once()).value;
    bool isDoctorFound = false;
    items.forEach((key, value) {
      final doctor = items[key];
      final doctorName = doctor['dname'];
      final doctorPassword = doctor['dpassword'];
      if (doctorName == dname) {
        if (doctorPassword == dpassword) {
          loggedDoctorId = key;
          isDoctorFound = true;
        }
      }
    });
    return isDoctorFound;
  }

  Future<DatabaseReference> findKid(String id) async {
    final items = (await _db.once()).value;
    String parentKey;
    items.forEach((key, value) {
      final parent = items[key];
      final kid = parent['kid'];
      final kidId = kid['id'];
      if (kidId == id) parentKey = key;
    });
    return _db.child('$parentKey/kid');
  }

  Future<dynamic> findParent(String name) async {
    final items = (await _db.once()).value;
    dynamic foundParent;
    items.forEach((key, value) {
      final parent = items[key];
      final parentName = parent['name'];
      if (parentName == name) foundParent = parent;
    });
    return foundParent;
  }

  Future<dynamic> findDoctor(String dname) async {
    final items = (await _db.once()).value;
    dynamic foundDoctor;
    items.forEach((key, value) {
      final doctor = items[key];
      final doctorName = doctor['dname'];
      if (doctorName == dname) foundDoctor = doctor;
    });
    return foundDoctor;
  }

  ///use [Database().loggedParentId]
  Future<dynamic> getParent(int id) async {
    final node = _db.child("$id");
    final snapshot = await node.once();
    final parent = snapshot.value;
    return parent;
  }

  Future<bool> createParent(
      {@required String email,
      @required String password,
      @required String phonenumber,
      @required String name,
      @required String kidName}) async {
    final kidId = Random().nextInt(999);
    final parent = {
      'name': name,
      'email': email,
      'password': password,
      'phonenumber': phonenumber,
      'kid': {
        'id': "$kidName-$kidId",
        "name": kidName,
        "score": "0",
        "score2": "0",
        "score3": "0",
        "score4": "0",
        "score5": "0",
      }
    };
    try {
      await _db.push().set(parent);
      return true;
    } catch (e) {
      dev.log("", error: e);
      return false;
    }
  }

  Future<bool> createDoctor(
      {@required String email,
      @required String dpassword,
      @required String dname,
      @required String phonenumber,
      @required String kidName}) async {
    final kidId = Random().nextInt(999);
    final doctor = {
      'dname': dname,
      'email': email,
      'dpassword': dpassword,
      'phonenumber': phonenumber,
      'kid': {
        'id': "$kidName-$kidId",
        "name": kidName,
        "score": "0",
        "score2": "0",
        "score3": "0",
        "score4": "0",
        "score5": "0",
      }
    };
    try {
      await _db.push().set(doctor);
      return true;
    } catch (e) {
      dev.log("", error: e);
      return false;
    }
  }

  final _database = FirebaseDatabase();
  DatabaseReference _db;
  static String loggedKidId;
  static String loggedParentId;
  static String loggedDoctorId;
  dynamic ParentsEmails;
}
