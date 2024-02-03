import 'package:flutter/material.dart';
import 'home.dart';
import 'constant.dart';
import 'dart:developer';

class firstpageanser extends StatelessWidget {
  late double _avar ,_bvar ,_cvar, _anser1, _anser2, _anser3, temp, _dvar, _evar;
  firstpageanser(_avar,_bvar,_cvar,_dvar,_evar, {super.key})
  {
    this._avar = double.parse(_avar);
    this._bvar = double.parse(_bvar);
    this._cvar = double.parse(_cvar);
    this._dvar = double.parse(_dvar);
    this._evar = double.parse(_evar);
    this._anser1 = calc1(this._avar,this._evar);
    this._anser2 = calc2(this._avar,this._bvar,this._cvar,this._dvar);
    this._anser3 = calc3(this._avar,this._bvar,this._cvar,this._dvar,this._evar);
  }
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - 100;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            body: ListView(
              children: <Widget>[
                Container(
                  width: width,
                  height: height-50,
                  color: Acolor,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, top: 100, right: 25, bottom: 30),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: width-100,
                          child: Center(
                            child: Text(
                                "الإنتاجية المطلوبة من المرحلة",
                              style: TextStyle(
                                color: Ccolor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Bcolor,
                            borderRadius: BorderRadius.all(Radius.circular(36)),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: width-150,
                          child: Center(
                            child: Text(
                              _anser1.toString(),
                              style: TextStyle(
                                color: Ccolor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(36),
                              bottomLeft: Radius.circular(36),
                            ),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(bottom: 30),),
                        Container(
                          height: 30,
                          width: width-100,
                          child: Center(
                            child: Text(
                              "الانتاجية المطلوبة للالة",
                              style: TextStyle(
                                color: Ccolor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Bcolor,
                            borderRadius: BorderRadius.all(Radius.circular(36)),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: width-150,
                          child: Center(
                            child: Text(
                              _anser2.toString(),
                              style: TextStyle(
                                color: Ccolor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(36),
                              bottomLeft: Radius.circular(36),
                            ),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(bottom: 30),),
                        Container(
                          height: 30,
                          width: width-100,
                          child: Center(
                            child: Text(
                              "عدد الالات",
                              style: TextStyle(
                                color: Ccolor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Bcolor,
                            borderRadius: BorderRadius.all(Radius.circular(36)),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: width-150,
                          child: Center(
                            child: Text(
                              _anser3.toString(),
                              style: TextStyle(
                                color: Ccolor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(36),
                              bottomLeft: Radius.circular(36),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top: 100),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              //minimumSize: Size(150, 60),
                              primary: Bcolor,
                            ),
                            child: Text('الصفحة الرئيسية',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  home()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: width,
                  height: 36,
                  child: Container(),
                  decoration: BoxDecoration(
                      color: Acolor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                      )
                  ),
                ),
              ],
            )
        )
    );
  }
  double calc1 (double _avar,double _evar)
  {
    return _evar*(1-_avar);
  }
  double calc2 (double _avar, double _bvar, double _cvar, double _dvar)
  {
    return (_cvar*60*8*_bvar)/(1000*_dvar);
  }
  double calc3 (double _avar, double _bvar, double _cvar, double _dvar,double _evar)
  {
    double temp1,temp2;
    temp1 = calc1 ( _avar, _evar);
    temp2 = calc2 ( _avar,  _bvar,  _cvar,  _dvar);
    return temp1/temp2;
  }
}
