import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var row = Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                   padding:EdgeInsets.all(30.0) ,
                   color: Colors.cyan,
                   child: Text('1'),
               ),
                ),
              Expanded(
                    child: Container(
                   padding:EdgeInsets.all(30.0) ,
                   color: Colors.pinkAccent,
                   child: Text('2'),
                 ),
              ),
              Expanded(
                   child: Container(
                   padding:EdgeInsets.all(30.0) ,
                   color: Colors.amberAccent,
                   child: Text('3'),
                 ),
              ),
    
              ],
            
          );
        return Scaffold(
          appBar: AppBar(
              title: Text('my first app'),
              centerTitle: true,
              backgroundColor: Colors.red[600]
          ),
          body: row,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('hi');
        },
        backgroundColor: Colors.red[600],
        child: Text('click'),
      ),
    );
  }
}



