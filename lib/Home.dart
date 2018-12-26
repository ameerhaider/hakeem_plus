import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
  void _reset(){
    setState(() {

      _counter=0;
    });

  }
  void _minus(){
    setState(() {

      _counter--;
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("+ floating action button"),
      ),

      body: Center(


        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new InkWell(
              child: new Text("-BUTTON!",
                style: new TextStyle(
                    color: Colors.blue,
                    fontSize: 50
                ),),
              onTap: _minus,

            ),
            new Text(
              'counter value =  $_counter',
              style: new TextStyle(
                color: Colors.red,
                fontSize:40,
                fontWeight: FontWeight.w900,

              ),),
            new InkWell(
              child: new Text("RESET!",
                style: new TextStyle(
                    color: Colors.blue,
                    fontSize: 50
                ),),
              onTap: _reset,

            ),

          ],
        ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: new BottomNavigationBar(  items: [
        new BottomNavigationBarItem(icon: new Icon(Icons.add_a_photo),title: new Text("hello1")),
        new BottomNavigationBarItem(icon: new Icon(Icons.add_a_photo),title: new Text("hello1")),
        new BottomNavigationBarItem(icon: new Icon(Icons.add_a_photo),title: new Text("hello1")),
        //  new BottomNavigationBarItem(icon: new Icon(Icons.add_a_photo),title: new Text("hello1")),
        // new BottomNavigationBarItem(icon: new Icon(Icons.add_a_photo),title: new Text("hello1")),
      ],
          onTap: (int i)=>debugPrint("button number $i  touched") ),

    );
  }
}
