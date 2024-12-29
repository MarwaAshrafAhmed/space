import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(children: [
              Image.asset('assets/images/bg.png',fit: BoxFit.fill,),
              Image.asset('assets/images/red.png'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: screensize.height*0.4,),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text("Explore\n The\n Universe",
                style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 48)),
                  ),

                  SizedBox(height: screensize.height*0.3,),

                  ElevatedButton(onPressed: (){

                  },
                    child: Row(mainAxisAlignment:MainAxisAlignment.start,children:[SizedBox(width: 20,),Text('Explore',textAlign: TextAlign.start,style: TextStyle(fontSize: 24),),SizedBox(width: screensize.width*.6,),IconButton(icon: Icon(Icons.arrow_forward),onPressed: (){Navigator.of(context).pushNamed('/page_one');},)]),
                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32),),

                      primary: Color(0xffEE403D),
                      padding: EdgeInsets.symmetric(vertical: 18),
                    ),
                  )
                ],
      ),


            ],
            ),
          ],
        ),
      ),
    );
  }
}
