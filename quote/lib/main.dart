import 'package:flutter/material.dart';
import 'qoute.dart';
import 'qoute_card.dart';

void main() => runApp(MaterialApp(
  home: QouteList(),
));

class QouteList extends StatefulWidget {

  @override
  _QouteListState createState() => _QouteListState();
}

class _QouteListState extends State<QouteList> {
  List<Qoute> qoutes =[
    Qoute(author: 'Olaide',text: 'no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor'),
    Qoute(author: 'Olaide',text: 'no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eir'),
    Qoute(author: 'Olaide',text: 'no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod'),
  
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Qoutes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
    
      ),
      body: Column(
        children:qoutes.map((qoute) => QouteCard(
          qoute: qoute,
          delete: () {
            setState(() {
              qoutes.remove(qoute);
            });
          }
        )).toList(),
      ),
    );
    
  }
}

