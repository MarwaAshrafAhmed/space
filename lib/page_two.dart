import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Screen_Size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            Stack(
              children: [
                Image.asset('assets/images/bg.png',fit: BoxFit.fill,),
                Image.asset('assets/images/moon.png'),
                Center(child: Text("Explore",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),),
                Column(children: [
                  SizedBox(height:Screen_Size.height*.3 ,),
                  Container(margin:EdgeInsets.only(left: 20),child: Text("Which planet \nwould you like to Explore?",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),)),
                ],
                ),


                Column(children: [
                  SizedBox(height: Screen_Size.height*.4,),
                  Image.asset("assets/images/mercury.png",height: 339,width: 342,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xffEE403D),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: IconButton(icon:Icon(Icons.arrow_back,color: Colors.white,),onPressed: (){Navigator.of(context).pop();},)
                      ),

                      Text("Mercury",style: TextStyle(color: Colors.white,fontSize: 24),),

                      Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xffEE403D),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: IconButton
                            (icon:Icon(Icons.arrow_forward,color: Colors.white),onPressed: (){},)
                      ),

                    ],
                  ),

                  SizedBox(height: 10),

                  ElevatedButton(onPressed: (){}, child: Row(mainAxisAlignment:MainAxisAlignment.start,children:[SizedBox(width: 20,),Text('Explore Mercury',textAlign: TextAlign.start,style: TextStyle(fontSize: 24),),SizedBox(width: Screen_Size.width*.3,),
                    IconButton(icon: Icon(Icons.arrow_forward),onPressed: (){},)]
                  ),
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
