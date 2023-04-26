
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);


  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueAccent.shade200,
          appBar: AppBar(
            title: Text('Search Your City'),
            centerTitle: true,
            backgroundColor: Colors.blueAccent.shade200,
            elevation: 0,
            leading: IconButton(onPressed: (){
              Navigator.of(context).pop();
            }, icon:Icon( CupertinoIcons.back)),
          ),
          body: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    hintText: 'search your city ...',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      color: Colors.white
                    ),
                    prefixIcon: Icon(Icons.search_rounded,color: Colors.white,size: 23,),
                    filled: true,
                    fillColor: Colors.blueAccent.shade400,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.blueAccent.shade700
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.blueAccent.shade700
                      ),
                      borderRadius: BorderRadius.circular(50)
                    )
                    )
                  ),
                ),
              SizedBox(height: 12,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  maximumSize: Size(size.width/1.5, size.height/4),
                  side: BorderSide(
                    width: 1,
                    color: Colors.blueAccent.shade400
                  ),
                  backgroundColor: Colors.blueAccent.shade400,
                  elevation: 0,
                  foregroundColor: Colors.white,
                ),
                  onPressed: (){},
                  child:Text('Find Your City Weather',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),)),
            ],
          ),
        ),);
  }
}
