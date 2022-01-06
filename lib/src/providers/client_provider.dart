import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_web_1/src/models/user_client.dart';

class ClientProvider {
  CollectionReference _ref;
  Client client;

  ClientProvider() {
    _ref = FirebaseFirestore.instance.collection('Clients');
  }

  Future<void> create(Client client) async {
    String errorMessage;

    try {
      return _ref.doc(client.id).set(client.toJson());
    } catch (error) {
      errorMessage = error.code;
    }

    if (errorMessage != null) {
      return Future.error(errorMessage);
    }
  }

  Future<Client> getByUserId(String id) async {
    DocumentSnapshot document = await _ref.doc(id).get();

    if (document.exists) {
      client = Client.fromJson(document.data());
      return client;
    }
    return null;
  }

  //actualizar informacion en firebase
  Future<void> update(Map<String, dynamic> data, String id) {
    return _ref.doc(id).update(data);
  }

  //obtener datos del client en tiempo real
  Stream<DocumentSnapshot> getByIdStream(String id) {
    return _ref.doc(id).snapshots(includeMetadataChanges: true);
  }
}
