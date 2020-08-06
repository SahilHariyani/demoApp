import 'package:demo/controller/fetch_data.dart';
import 'package:demo/model/demo_response_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: SafeArea(
            child: FutureBuilder<DemoResponse>(
          future: FetchData().getData(),
          builder: (context, snapshot) {
            return ListTile(
              trailing: Icon(Icons.ac_unit),
              leading: Icon(Icons.ac_unit),
              title: Text(snapshot.data.msg),
              subtitle: Text(snapshot.data.afafa),
            );
          },
        )));
  }
}
