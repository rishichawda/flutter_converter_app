import 'package:flutter/material.dart';

void main() => runApp(new App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Convertor App',
      home: new Scaffold(
        appBar: new AppBar(
           title: new Text('Convertor'),
          ),
          body: new Container(
            decoration: new BoxDecoration(
            ),
            padding: EdgeInsets.all(25.0),
            child: new ConvertorTools()
          ),
        )
      );
  }
}

class ConvertorTools extends StatefulWidget {

  @override
    createState() => new ConvertorToolsState();
    }

class ConvertorToolsState extends State<ConvertorTools> {

final _tools_list = <Widget>[];
final _tools_title = ['Weight', 'Length', 'Currency'];


  @override
  Widget build(BuildContext context) {

  for (var i = 0; i < _tools_title.length; i++) {
    var tool = new Card(
                child: new Center(
                  child: new Text(
                    _tools_title[i]
                  )
                )
              );
    _tools_list.add(tool);

  }
  
    return new GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20.0),
      crossAxisSpacing: 10.0,
      crossAxisCount: 2,
      children: _tools_list
    );
  }
}