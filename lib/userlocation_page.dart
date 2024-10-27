import 'dart:convert';

import 'package:escortservic/custometextfield.dart';
import 'package:escortservic/model/locationModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserlocationPage extends StatefulWidget {
  @override
  State<UserlocationPage> createState() => _UserlocationPageState();
}

class _UserlocationPageState extends State<UserlocationPage> {
  TextEditingController locationCointroller = TextEditingController();

// 7681808342
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter Location"),
      ),
      body: Column(
        children: [
          Custometextfield(
              prefixIcon: Icons.location_city,
              controller: locationCointroller,
              hintText: "Enter City",
              labelText: "Enter City"),
          ElevatedButton(
              onPressed: () async {
                var result = await locationfetch(
                    city: locationCointroller.text.toString());
                var data = result!.results![0].formatted;
                print(data);
              },
              child: Text("fetch Data")),
          //  Text("${LocationModel.}"),
        ],
      ),
    );
  }

  Future<LocationModel?> locationfetch({required String city}) async {
    var uri = await Uri.parse(
        "https://api.opencagedata.com/geocode/v1/json?q=${city}&key=56f6701e4d9643628e7993d75de632d1");
    var responce = await http.get(uri);
    try {
      if (responce.statusCode == 200) {
        var data = jsonDecode(responce.body);
        var conModel = LocationModel.fromJson(data);
        return conModel;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
    }
  }
}
