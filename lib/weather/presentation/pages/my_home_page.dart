import 'package:flutter/material.dart';
import 'package:weather_test/weather/presentation/pages/search_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.blueAccent.shade400,
      appBar: AppBar(
        elevation: 0,
        title: Text('Weather',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Padding(
              padding: const EdgeInsets.only(right: 14),
              child: IconButton(
                  icon: Icon(Icons.search_rounded,size: 28,),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SearchPage()),
                    );
                  }),
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width / 1,
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.blueAccent.withOpacity(0.6)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 15),
              //City Name
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.map,size: 28,),
                  SizedBox(width: 8),
                  Text('City Name',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 8),
              //Date Of the Day
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('22/04/2023',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.6))),
              ),
              //Weather Image
              Padding(
                  padding: const EdgeInsets.only(left: 20,top: 15),
                  child: SizedBox(
                      width: 130,
                      height: 120,
                      child: Image.asset(
                        'assets/images/weather-sun.png',
                        fit: BoxFit.cover,
                      ))),
              SizedBox(height: 50),
              //Weather Description and Current Temperature
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Pretty Cloud',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  Text(
                    '25 C\u00B0',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                ],
              ),
              SizedBox(height: 36,),
              //Max nad Min Temperature
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(image:AssetImage('assets/images/min-temp.png'),height: 50,width: 50),
                  SizedBox(width: 8),
                  Text('10 C\u00B0',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
                  SizedBox(width: 40),
                  Image(image:AssetImage('assets/images/max-temp.png'),height: 50,width: 50),
                  Text('30 C\u00B0',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
