import 'package:flutter/material.dart';

import 'package:file_preview/file_preview.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            title: const Text('Plugin example app'),
          ),
          body: new Column(
            children: <Widget>[
              new FlatButton(child: new Text("Open Online Pdf"), onPressed: () {
                FilePreview.openFile("http://www.bjrbj.gov.cn/csibiz/home/static/articles/catalog_118000/2015-10-18/article_ff8080813ff2f8f8014048168f5e0026/ff8080814f63b391015079827918000e.pdf");
              }),
              new Container(height: 20,),
              new FlatButton(child: new Text("Open Online Docx"), onPressed: () {
                FilePreview.openFile("http://www.bjrbj.gov.cn/csibiz/home/static/articles/catalog_118000/2017-12-14/article_ff808081583de24e016054399d8f0259/ff808081583de24e016054399d8f025c.docx");
              }),
              new Container(height: 20,),
              new FlatButton(child: new Text("Open Online Xls"), onPressed: () {
                FilePreview.openFile("http://www.bjrbj.gov.cn/csibiz/home/static/articles/catalog_118000/2017-12-14/article_ff808081583de24e0160543be5a10261/ff808081583de24e0160543be5a10264.xls");
              }),
            ],
          )),
    );
  }
}
