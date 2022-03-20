import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:firebase_storage/firebase_storage.dart';

class StorageRepo {
  static Future<String> uploadImageToFirebase({
    required Uint8List imageData,
    required String filename,
    String destination = 'user_images',
  }) async {
    // String fileName = basename(imageFile.path);
    try {
      String fileName = base64.encode(filename.codeUnits) +
          '.' + filename;
      final ref = FirebaseStorage.instance.ref(destination).child(fileName);
      final uploadTask = ref.putData(imageData);
      await uploadTask.whenComplete(() => null);
      final url = await ref.getDownloadURL();
      return url;
    } catch (er) {
      return '';
    }
  }
}
