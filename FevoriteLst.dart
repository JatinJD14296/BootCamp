import 'package:flutter/material.dart';
import 'package:bootcamp/Quotes.dart';

class Second2 extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("BootCamp"),
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context))),
        body: ListView.builder(
          itemCount: Quotes.fevQuotes.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(Quotes.fevQuotes[index]),
                  trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          Quotes.fevQuotes.remove(Quotes.quotes[index]);
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
