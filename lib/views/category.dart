import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:walli/data/data.dart';
import 'package:walli/model/categoriesModel.dart';
import 'package:http/http.dart' as http;
import 'package:walli/model/wallpaper_Model.dart';
import 'package:walli/views/search.dart';
import 'package:walli/widgets/Widget.dart';

class Category extends StatefulWidget {
  final String categoryword;

  Category({this.categoryword});

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<wallpaperModel> wallpapers = new List();

  getSearchWallPaper(String query) async {
    var response = await http.get(
        "https://api.pexels.com/v1/search?query=$query&per_page=15&page=1",
        headers: {"Authorization": apiKey});

    Map<String, dynamic> jsonData = jsonDecode(response.body);

    jsonData["photos"].forEach((element) {
      wallpaperModel wallPaperModel = new wallpaperModel();
      wallPaperModel = wallpaperModel.fromMap(element);
      wallpapers.add(wallPaperModel);
    });
    setState(() {});
  }

  @override
  void initState() {
    getSearchWallPaper(widget.categoryword);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                child: Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 20.0, right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_back),
                onPressed:(){ Navigator.of(context).pop();}),
            Text(
              "Wallpaper",
              style: TextStyle(color: Color(0xFF270949), fontSize: 32),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.33,
            ),
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Color(0xFF270949),
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Search();
                  }));
                })
          ],
        ),
      ),
                  SizedBox(height: MediaQuery.of(context).size.height*.04,),
                  wallPapersList(wallpapers, context)
                  ]
                )
            )
        )
    );
  }
}
