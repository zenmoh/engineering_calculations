import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'secoundpage.dart';
import 'firstpage.dart';
import 'constant.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - 100;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: width,
            height: height/2,
            color: Acolor,
            child: Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(16)),
                Image.asset("assets/start.png",width: 100,height: 100,),
                Padding(padding: EdgeInsets.all(16)),
                Text("Hi Engineer !",style: TextStyle(color: Ccolor,fontSize: 30,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Container(
            width: width,
            height: height/4,
            color: Acolor,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(32),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 60),
                  primary: Bcolor,
                ),
                child: Text('القسم الأول',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  firstpage()),
                  );
                },
              ),

            ),
          ),
          Container(
            width: width,
            height: height/4,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(32),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 60),
                  primary: Bcolor,
                ),
                child: Text('القسم الثاني',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  secoundpage()),
                  );
                },
              ),

            ),
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
    );
  }
}
/*
Container(
width: width,
height: height/2,
child: Container(
width: width/2,
height: height/4,
child: TextButton(
child: const Text('BUY TICKETS'),
onPressed: ()=>{},
style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Bcolor)),
),
),
decoration: BoxDecoration(
color: Acolor,
borderRadius: BorderRadius.only(
bottomLeft: Radius.circular(36),
bottomRight: Radius.circular(36),
)
),
),
*/
