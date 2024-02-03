import 'package:flutter/material.dart';
import 'home.dart';
import 'constant.dart';

class secoundpageanser extends StatelessWidget {
 late double _avar, _bvar, _cvar, _anser1, _anser2, _anser3, temp, _dvar, _evar , _fvar, _anser4;
  secoundpageanser(_avar, _bvar, _cvar, _dvar, _evar, _fvar) {
    this._avar = double.parse(_avar);
    this._bvar = double.parse(_bvar);
    this._cvar = double.parse(_cvar);
    this._dvar = double.parse(_dvar);
    this._evar = double.parse(_evar);
    this._fvar = double.parse(_fvar);
    this._anser1 = calc1(this._avar, this._fvar);
    this._anser2 = calc2(this._avar, this._bvar, this._cvar, this._dvar, this._evar);
    this._anser3 = calc3(this._avar, this._bvar, this._cvar, this._dvar, this._evar,this._fvar);
    this._anser4 = calc4(this._dvar);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - 100;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            body: Column(
          children: <Widget>[
            Container(
              width: width,
              height: height - 50,
              color: Acolor,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 30, top: 100, right: 30, bottom: 30),
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 30,
                      width: width - 100,
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
                      width: width - 200,
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                    ),
                    Container(
                      height: 30,
                      width: width - 100,
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
                      width: width - 200,
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                    ),
                    Container(
                      height: 30,
                      width: width - 100,
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
                      width: width - 200,
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                    ),
                    Container(
                      height: 30,
                      width: width - 100,
                      child: Center(
                        child: Text(
                          "عدد برمات بالمتر",
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
                      width: width - 200,
                      child: Center(
                        child: Text(
                          _anser4.toString(),
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
                        child: Text(
                          'الصفحة الرئيسية',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => home()),
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
                  )),
            ),
          ],
        )));
  }

  double calc1 (double _avar,double _fvar)
  {
    return _fvar*(1-_avar);
  }

  double calc2(double _avar, double _bvar, double _cvar, double _dvar,double _evar) {
    return (_cvar * 60 * 8 * _bvar) / (1000*(_dvar/0.0254)*_evar);
  }

  double calc3 (double _avar, double _bvar, double _cvar, double _dvar,double _evar,double _fvar)
  {
    double temp1,temp2;
    temp1 = calc1 ( _avar, _fvar);
    temp2 = calc2 ( _avar,  _bvar,  _cvar,  _dvar, _evar);
    return (temp1/temp2);
  }
  double calc4 (double _anser4)
  {
    return _anser4/0.0254;
  }
}
