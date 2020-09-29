import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:walli/data/data.dart';
import 'package:walli/model/categoriesModel.dart';
import 'package:http/http.dart' as http;
import 'package:walli/model/wallpaper_Model.dart';
import 'package:walli/widgets/Widget.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<CategoriesModel> categories = new List();
  List<wallpaperModel> wallpapers = new List();

  getTrendingWallPaper() async{

    var response = await http.get("https://api.pexels.com/v1/curated?per_page=15&page=1",
      headers: {
      "Authorization" : apiKey
      }
      );

    Map<String, dynamic> jsonData = jsonDecode(response.body);

    jsonData["photos"].forEach((element){
        wallpaperModel wallPaperModel = new wallpaperModel();
        wallPaperModel = wallpaperModel.fromMap(element);
        wallpapers.add(wallPaperModel);
    });
    setState(() {

    });
  }


  @override
  void initState(){
    getTrendingWallPaper();
    categories =getCategories();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,left: 14.0,right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Wallpaper",style: TextStyle(
                          color: Color(0xFF270949),
                          fontSize: 32
                        ),),
                        SizedBox(width: MediaQuery.of(context).size.width*0.42,),
                        IconButton(icon: Icon(Icons.search,color: Color(0xFF270949),size: 30,), onPressed: null)
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.05,),
                  Container(
                    height: MediaQuery.of(context).size.height*.1,
                    child: ListView.builder(
                      padding: EdgeInsets.only(left: 12.0,bottom: 5.0,right: 12.0),
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: categories.length,
                      shrinkWrap: true,
                      itemBuilder: (context,index){
                        return CategoryListTile(
                          title: categories[index].categoriesName,
                          imageUrl: categories[index].categoryImage,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.05,),
                  wallPapersList(wallpapers,context)
                ],
            ),

        ),
      ),
    );
  }
}

class CategoryListTile extends StatelessWidget {

  final String imageUrl;
  final String title;
  CategoryListTile({@required this.title,this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.1,
      margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            //clipBehavior: ,
            child: Image.network(imageUrl,width: MediaQuery.of(context).size.width*0.3,fit: BoxFit.cover,),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(25)
            ),
            
            width: MediaQuery.of(context).size.width*0.3,
            alignment: Alignment.center,
            child: Text(title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800
              ),
            ),
          )
        ],
      ),
    );
  }
}

