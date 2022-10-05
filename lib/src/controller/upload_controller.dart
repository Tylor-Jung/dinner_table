import 'dart:io';

import 'package:dinner_table/src/components/message_pop_up.dart';
import 'package:dinner_table/src/controller/auth_controller.dart';
import 'package:dinner_table/src/model/post.dart';
import 'package:dinner_table/src/repository/post_repository.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UploadController extends GetxController {
  TextEditingController textEditingController = TextEditingController();

  Post? post;

  @override
  void onInit() {
    super.onInit();
    post = Post.init(AuthController.to.user.value);
  }

  void unfocusKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  void uploadPost() {
    unfocusKeyboard();
    print(textEditingController);
  }
}

UploadTask uploadFile(File file, String fileName) {
  var ref = FirebaseStorage.instance.ref().child('instagram').child(fileName);
  final metadata = SettableMetadata(
    contentType: 'image/jpeg',
    customMetadata: {'picked-file-path': file.path},
  );
  return ref.putFile(file, metadata);

  // users(uid)/profile.jpg or profile.png로 저장이 될 것
  // metadata는 pub.dev firebase_storage의 example에서 metadata 검색 후 복붙
}

void _submitPost(Post postData) async {
  await PostRepository.updatePost(postData);
  showDialog(
      context: Get.context!,
      builder: (context) => MessagePopUp(
          title: '포스트',
          messgae: '포스팅이 완료 되었습니다.',
          okCallback: () {
            Get.until((route) => Get.currentRoute == '/');
          },
          cancelCallback: Get.back));
}
