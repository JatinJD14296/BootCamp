import 'package:flutter/material.dart';
import 'package:bootcamp/Quotes.dart';
import 'package:bootcamp/FevoriteLst.dart';

void main() => runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Quotes",
        home:MyApp()
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        drawer: Drawer(
            child: ListView(children: <Widget>[
          FlatButton(onPressed: () {
          }, child: Text("Favorite"))
        ])),
//        floatingActionButton:
//            FloatingActionButton(onPressed: () {}, child: Icon(Icons.ac_unit)),
        appBar: AppBar(
          title: Text("BootCamp"),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.favorite,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Second2()));
                })
          ],
        ),
        body: ListView.builder(
          itemCount: Quotes.quotes.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(Quotes.quotes[index]),
                  trailing: IconButton(
                      icon: Icon(Icons.favorite),
                      color: Quotes.fevQuotes.contains(Quotes.quotes[index])
                          ? Colors.red
                          : null,
                      onPressed: () {
                        setState(() {
                          Quotes.fevQuotes.contains(Quotes.quotes[index])
                              ? Quotes.fevQuotes.remove(Quotes.quotes[index])
                              : Quotes.fevQuotes.add(Quotes.quotes[index]);
                        });
                      }),
                ),
              ),
            );
          },
        ),
      );
  }
}
