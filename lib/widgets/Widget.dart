import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walli/model/wallpaper_Model.dart';

Widget wallPapersList(List<wallpaperModel> wallpapers, context){
  return Expanded(
    child: Container(
        child: GridView.count(
            crossAxisCount: 2,
          childAspectRatio: 0.58,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          children: wallpapers.map((wallpaper) {
              return GridTile(
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(wallpaper.src.portrait,fit: BoxFit.cover,)
                    ),
                  )
              );
          }).toList(),
        ),

    ),
  );
}