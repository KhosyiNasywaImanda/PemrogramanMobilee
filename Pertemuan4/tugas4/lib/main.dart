import 'package:flutter/material.dart';
import 'package:tugas4/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  final inputController = TextEditingController();
  String _newValue = "Kelvin";
  double _result = 0;
  List<String> listViewItem = [];

  // List of temperature units
  var listItem = ["Kelvin", "Reamur"];

  void perhitunganSuhu() {
    setState(() {
      _inputUser = double.parse(inputController.text);
      if (_newValue == "Kelvin")
        _result = _inputUser + 273;
      else
        _result = (4 / 5) * _inputUser;
        listViewItem.add("$_inputUser Celcius = $_result $_newValue");
        inputController.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [

              //textfield
              TextField(
                controller: inputController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Masukkan Suhu',
                ),
              ),

              //container2
              Container(
                child: Column(
                  children: [
                    DropdownButton<String>(
                      items: listItem.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      value: _newValue,
                      onChanged: (changeValue) {
                        setState(() {
                          _newValue = changeValue!;
                        });
                      },
                    ),
                    //SizedBox(height: 20),
                    Result(result: _result),
                  ],
                ),
              ),

              //sizedBox
              SizedBox(
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: perhitunganSuhu,
                    child: Text(
                      'Konversi Suhu',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'Riwayat Konversi',
                  style: TextStyle(fontSize: 20),
                ),
              ),

                Expanded(
                child: ListView(
                  children: listViewItem.map((String value) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 15),
                      ),
                    );
                  }).toList(),
                ),
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}
