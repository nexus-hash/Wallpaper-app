import 'package:flutter/cupertino.dart';

class wallpaperModel{

  String photographer;
  String photographer_url;
  int photographer_id;
  srcModel src;

  wallpaperModel({this.src,this.photographer_url,this.photographer_id,this.photographer});
}

class srcModel{

  String original;
  String small;
  String portrait;

  srcModel({this.portrait,this.original,this.small});
}