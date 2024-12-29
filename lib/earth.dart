import 'package:flutter/material.dart';

class Earth extends StatelessWidget {
  const Earth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screen_size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/bg.png',fit: BoxFit.fill,),
                Image.asset('assets/images/moon.png'),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(32), color: Color(0xffEE403D),),

          child: IconButton
            (icon:Icon(Icons.arrow_back,color: Colors.white),onPressed: (){Navigator.of(context).pop();}),
        ),
                Center(child: Text("Explore",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),),
                Column(children: [
                  SizedBox(height:screen_size.height*.3 ,),
                  Container(margin:EdgeInsets.only(left: 20),child: Text("Which planet \nwould you like to Explore?",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),)),
                ],
                ),


                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    SizedBox(height: screen_size.height*.4,),
                    Image.asset("assets/images/the_earth.png",height: 339,width: 342,),
                    Align(alignment:Alignment.topLeft,child: Text("About \n",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold))),
                    Align(alignment:Alignment.topLeft,child: Text("Earth is the only known planet in the\n universe that supports life. Its unique\n combination of factors, including liquid\n water, a breathable atmosphere, and a \nsuitable distance from the Sun, has created\n the ideal conditions for the development of \ncomplex organisms. Earth's magnetic field \nprotects it from harmful solar radiation, and \nits atmosphere helps to regulate \ntemperature and weather patterns.\n",style: TextStyle(color: Colors.white,))),
                      Text("Distance from Sun (km) : 149598026\n Length of Day (hours) : 23.93\n Orbital Period (Earth years) : 1\n Radius (km) : 6371\n Mass (kg) : 5.972 × 10²⁴\n Gravity (m/s²) : 9.81\n Surface Area (km²) : 5.10 × 10⁸\n",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ],
                  ),
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}

