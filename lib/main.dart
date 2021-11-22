import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:Scaffold(
      backgroundColor:Colors.blue,
      /*appBar:AppBar(
            elevation:0,
        leading: Icon(Icons.menu),
        title: Text("Profile"
        ),
      ),*/
    body:Column(
      children: [
        Stack(
          children:[
            Container(
              //margin:EdgeInsets.only(top:30),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage('assets/images/eric.jpg'),fit: BoxFit.cover,
                ),
              ),
              child:BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1.0,sigmaY: 1.0),
                child:Container(
                  decoration: BoxDecoration(color:Colors.blue.withOpacity(0.7),),

                ),
              ),
                height: 300,
                width: double.infinity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children:[

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.menu,color: Colors.white,),
                ),
                Text("Profile",style:TextStyle(color: Colors.white),),
              ],
            ),
           Center(
             child: Container(
               margin:EdgeInsets.only(top:100,),
               child: CircleAvatar(
                 radius: 95,
                 backgroundColor: Colors.white,
                 child: CircleAvatar(
                   backgroundImage:AssetImage('assets/images/eric.jpg'),
                   maxRadius: 90.0,

                 ),
               ),
             ),
           ),

          ],
        ),

        Center(
          child: SizedBox(
          height:40,
              child: Text('Eric Schmidt', style: TextStyle(
                  color:Colors.white ,fontSize: 25,fontWeight:FontWeight.bold
              ),
                textAlign: TextAlign.center ,

              ),

          ),


        ),
      Text(
        "Snowboarder,Superhero and writer.\nSometime I work at google and Executive\nChairman",
        style: TextStyle(
            height:1,color: Colors.white,
            fontWeight: FontWeight.w500,decorationThickness: .2
        ),
        textAlign: TextAlign.center,
      ),

        Container(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              popularityCard(numval: 355,textval: "POSTS",),
              popularityCard(numval: 435,textval:"FOLLOWERS",),
              popularityCard(numval:367,textval:"FOLLOWING",),

            ],
          ),
          height:60,
          margin: EdgeInsets.only(top: 30.0),
          width:double.infinity,

          decoration: BoxDecoration(
            border:Border(
              top:BorderSide(
                color: Colors.white54,

              ),
              bottom:BorderSide(
                  color:Colors.white54
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(40),
          height: 40,
          width: 300,
          color: Colors.white,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.assignment_ind_sharp,
              ),

              Text("FOLLOW",style: TextStyle(
                color: Colors.black,
              ),textAlign: TextAlign.justify,),
            ],
          ),



          ),

      ],
    ),

      ),
    );
  }
}

class popularityCard extends StatelessWidget {
  const popularityCard({
    Key? key, required this.numval, required this.textval,
  }) : super(key: key);
  final int numval;
  final String textval;

  @override
  Widget build(BuildContext context) {
    return Text("${numval}\n ${textval}",textAlign: TextAlign.center,style:TextStyle(
        color: Colors.white),
    );
  }
}
