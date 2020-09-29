import 'package:flutter/cupertino.dart';


class wallpaperModel{

  String photographer;
  String photographer_url;
  int photographer_id;
  srcModel src;

  wallpaperModel({this.src,this.photographer_url,this.photographer_id,this.photographer});

  factory wallpaperModel.fromMap(Map<String, dynamic> jsonData){
    return wallpaperModel(
      src: srcModel.fromMap(jsonData["src"]),
      photographer_url: jsonData["photographer_url"],
      photographer_id: jsonData["photographer_id"],
      photographer: jsonData["photographer"]
    );
  }

}

class srcModel{

  String original;
  String small;
  String portrait;

  srcModel({this.portrait,this.original,this.small});

  factory srcModel.fromMap(Map<String,dynamic> jsonData){
      return srcModel(
        portrait: jsonData["portrait"],
        original: jsonData["original"],
        small: jsonData["small"]
      );
  }
}