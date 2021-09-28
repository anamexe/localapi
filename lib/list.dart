import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/flutter_load_local_json/country.dart';
// import "package:flutter/assets/country.dart";

class CountyList extends StatelessWidget {
  final List<CountyList>? county;
  CountyList({Key? key, this.county}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: county == null ? 0 : county!.length,
        itemBuilder: (BuildContext context, int index) {
          return
            new Card(
              child: new Container(
                child: new Center(
                    child: new Column(
                      // Stretch the cards in horizontal axis
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[

                        new Text(
                          // Read the name field value and set it in the Text widget
                          // country![index].name,
                          '${country![index].id}',
                          // '${article[position].title}',

                          // set some style to text
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.lightBlueAccent),
                        ),
                        new Text(
                          // Read the name field value and set it in the Text widget
                          "Capital:- " + country![index].created_at,
                          // set some style to text
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.amber),
                        ),
                      ],
                    )),
                padding: const EdgeInsets.all(15.0),
              ),
            );
        });
  }
}