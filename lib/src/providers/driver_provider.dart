import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_web_1/src/models/user_driver.dart';

class DriverProvider {
  CollectionReference _ref;
  Driver driver;

  DriverProvider() {
    _ref = FirebaseFirestore.instance.collection('Drivers');
  }

  Future<void> create(Driver driver) async {
    String errorMessage;

    try {
      return _ref.doc(driver.id).set(driver.toJson());
    } catch (error) {
      errorMessage = error.code;
    }

    if (errorMessage != null) {
      return Future.error(errorMessage);
    }
  }

  Future<Driver> getByUserId(String id) async {
    DocumentSnapshot document = await _ref.doc(id).get();

    if (document.exists) {
      driver = Driver.fromJson(document.data());
      return driver;
    }
    return null;
  }

  //actualizar informacion en firebase
  Future<void> update(Map<String, dynamic> data, String id) {
    return _ref.doc(id).update(data);
  }

  //obtener datos del driver
  Stream<DocumentSnapshot> getByIdStream(String id) {
    return _ref.doc(id).snapshots(includeMetadataChanges: true);
  }
}
