import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chatModel {
  final profile_pic;
  final String title;
  final String message;
  final String time;
  chatModel(
      {required this.profile_pic,
      required this.title,
      required this.message,
      required this.time});
}

List<chatModel> chatdata = [
  // 
  chatModel(
      profile_pic:
          "assets/sir hasan.JPEG",
      title: "Sir Hasan",
      message: "Pass Ya fail .",

      time: "10/12/22"),
  chatModel(
      profile_pic:
          "assets/karim.JPEG",
      title: "karim",
      message: "Link share krdo",
      time: "09/12/22"),
  chatModel(
      profile_pic:
          "assets/muntazir.jpeg",
      title: "Muntazir",
      message: "thanks",
      time: "08/12/22"),
  chatModel(
      profile_pic:

"assets/zaid.jpeg",
      title: "zaid",
      message:"ok",
      time: "07/12/22"),
  chatModel(
      profile_pic:
"assets/faisal.JPEG",     
 title: "Faisal",
      message: " ?",
      time: "07/12/22"),
  chatModel(
      profile_pic:
          "assets/salman.jpeg",
      title: "Salman",
      message: "Salam",
      time: "06/12/22"),
];