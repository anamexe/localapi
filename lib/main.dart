import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:flutter_load_local_json/country.dart';
// import 'package:flutter_load_local_json/list.dart';
import 'package:localapi/country.dart';
import 'package:localapi/list.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      primaryColor: const Color(0xFF02BB9F),
      primaryColorDark: const Color(0xFF167F67),
      accentColor: const Color(0xFF167F67),
    ),
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  List? data;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Load local JSON file",
            style: new TextStyle(color: Colors.white),),
        ),
        body: new Container(
          child: new Center(
            // Use future builder and DefaultAssetBundle to load the local JSON file
            child: new FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/country.json'),
                builder: (context, snapshot) {
                  List<Country> countries = parseJosn(snapshot.data.toString());
                  if (!countries.isEmpty) {
                    return new CountyList(county: countries);
                  } else {
                    return new Center(child: new CircularProgressIndicator());
                  }
                }),
          ),
        ));
  }

  List<Country> parseJosn(String response) {
    if(response==null){
      return [];
    }
    final parsed =
    json.decode(response.toString()).cast<Map<String, dynamic>>();
    return parsed.map<Country>((json) => new Country.fromJson(json)).toList();
  }
}