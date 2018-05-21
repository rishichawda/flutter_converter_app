import 'package:flutter/material.dart';

void main() => runApp(new App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'converter App',
      home: new Scaffold(
        appBar: new AppBar(
           title: new Text('Converter'),
          ),
          body: new Container(
            decoration: new BoxDecoration(
            ),
            padding: EdgeInsets.all(25.0),
            child: new converterTools()
          ),
        )
      );
  }
}

class converterTools extends StatefulWidget {

  @override
    createState() => new converterToolsState();
    }

class converterToolsState extends State<converterTools> {


 void weight_converter(){
      Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Convert Weight'),
            ),
          );
        }
      )
    );
  }
 void length_converter(){
      Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Convert Length'),
            ),
          );
        }
      )
    );
  }
 void currency_converter(){
      Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Convert Currency'),
            ),
          );
        }
      )
    );
  }
 void temperature_converter(){
      Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Convert Temperature'),
            ),
          );
        }
      )
    );
  }

  @override
  Widget build(BuildContext context) {
  
    return new GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20.0),
      mainAxisSpacing: 11.0,
      crossAxisSpacing: 11.0,
      crossAxisCount: 2,
      children: <Widget>[
        new GestureDetector(
                onTap: weight_converter,
                child: new Card(
                          child: new Center(
                            child: new Text('Weight')
                          )
                      )
                ),
                new GestureDetector(
                onTap: length_converter,
                child: new Card(
                          child: new Center(
                            child: new Text('Length')
                          )
                      )
                ),
                new GestureDetector(
                onTap: currency_converter,
                child: new Card(
                          child: new Center(
                            child: new Text('Currency')
                          )
                      )
                ),
                new GestureDetector(
                onTap: temperature_converter,
                child: new Card(
                          child: new Center(
                            child: new Text('Temperature')
                          )
                      )
                ),
      ]
    );
  }

}