import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'constant.dart';
import 'firstpageanser.dart';

class firstpage extends StatelessWidget {
  TextEditingController _anumber = TextEditingController();
  TextEditingController _bnumber = TextEditingController();
  TextEditingController _cnumber = TextEditingController();
  TextEditingController _dnumber = TextEditingController();
  TextEditingController _enumber = TextEditingController();
  late String temp;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - 280;
    return Directionality(
        textDirection: TextDirection.rtl,
          child: Scaffold(
                body: Column(
                  children: <Widget>[
                    Container(
                      width: width,
                      height: height ,
                      color: Acolor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30, right: 75, left: 75, bottom: 0),
                        child: ListView(
                          children: <Widget>[
                            TextField(
                              controller: _anumber,
                              decoration: InputDecoration(
                                  labelText: "العوادم",
                                  labelStyle: TextStyle(fontSize: 24, color: Ccolor)),
                              keyboardType: TextInputType.number,
                            ),
                            TextField(
                              controller: _bnumber,
                              decoration: InputDecoration(
                                  labelText: "مردود",
                                  labelStyle: TextStyle(fontSize: 24, color: Ccolor)),
                              keyboardType: TextInputType.number,
                            ),
                            TextField(
                              controller: _cnumber,
                              decoration: InputDecoration(
                                  labelText: "سرعة",
                                  labelStyle: TextStyle(fontSize: 24, color: Ccolor)),
                              keyboardType: TextInputType.number,
                            ),
                            TextField(
                              controller: _dnumber,
                              decoration: InputDecoration(
                                  labelText: "النمرةالمترية",
                                  labelStyle: TextStyle(fontSize: 24, color: Ccolor)),
                              keyboardType: TextInputType.number,
                            ),
                            TextField(
                              controller: _enumber,
                              decoration: InputDecoration(
                                  labelText: "انتاجية المرحلة السابقة",
                                  labelStyle: TextStyle(fontSize: 24, color: Ccolor)),
                              keyboardType: TextInputType.number,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(
                                  top: 6, right: 32, left: 32, bottom: 0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  //minimumSize: Size(150, 30),
                                  primary: Bcolor,
                                ),
                                child: Text(
                                  'النتيجة',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 30),
                                ),
                                onPressed: () {
                                  if (_anumber.text != null &&
                                      _bnumber.text != null &&
                                      _cnumber.text != null) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => firstpageanser(
                                              _anumber.text,
                                              _bnumber.text,
                                              _cnumber.text,
                                              _dnumber.text,
                                              _enumber.text)),
                                    );
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: width,
                      height: 20,
                      child: Container(),
                      decoration: BoxDecoration(
                          color: Acolor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(36),
                            bottomRight: Radius.circular(36),
                          )),
                    ),
                  ],))
    );
  }
}
