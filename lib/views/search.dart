import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController _textEditingController =new TextEditingController();

  @override
  void initState(){
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
                padding: const EdgeInsets.only(top: 40.0,left: 14.0,right: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*.072,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  padding: EdgeInsets.symmetric(horizontal: 1),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(50.0)
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.arrow_back),
                          onPressed: (){Navigator.of(context).pop();}),
                      Expanded(
                        child: TextField(
                          controller: _textEditingController,
                          decoration: InputDecoration(
                            hintText: "search wallpapers",
                            border: InputBorder.none
                          ),
                        ),
                      ),
                      IconButton(icon: Icon(Icons.search,color: Color(0xFF270949),size: 30,),
                          onPressed: (){

                          }
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
