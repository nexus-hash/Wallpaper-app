import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



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
                    padding: const EdgeInsets.only(top: 20.0,left: 14.0,right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Wallx",style: TextStyle(
                          color: Color(0xFF270949),
                          fontSize: 34
                        ),),
                        SizedBox(width: MediaQuery.of(context).size.width*0.57,),
                        IconButton(icon: Icon(Icons.search,color: Color(0xFF270949),size: 30,), onPressed: null)
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.05,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*.15,
                    color: Colors.red,
                  )
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
  CategoryListTile(this.title,this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Stack(
        children: <Widget>[
          Container(
            child: Image.network(imageUrl),
          ),
          Container(
            child: Text(title),
          )
        ],
      ),
    );
  }
}
