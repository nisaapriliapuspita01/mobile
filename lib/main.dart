import 'package:flutter/material.dart';
import 'package:flutter/constant.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      fontFamily: "Poppins",
      textTheme: TextTheme(
        body1: TextStyle(color: kBodyTextColor),
      ) ),
      home: HomeScreen(),
    );
   }
 }

 class HomeScreen extends StatelessWidget{
   @override
   Widget build(BuildContext context){
     return Scaffold(
       body: Column(
         children: <Widget>[
           ClipPath(
           clipper: MyClipper(),
           child: Container(
             padding: EdgeInsets.only(left; 40, top: 50, right: 20),
           height: 350,
           width: double.infinity,
           decoretion: BoxDecoration(
             gradient: LineGradient(
               begin: Aligment.topRight,
               end: Aligment.bottomLeft,
               colors:[
                 Color(0xFF3383CD),
                 Color(0xFF11249F),
                 ],
               ),
               image: DecorationImage(
                 image: AssetsImage("assets/images/virus.png"),
                 ),
              ),
              child: Column(
                crossAxisAligment: CrossAxisAligment.start,
                children: <Widget>[
                  Align(
                    aligment: Aligment.topRight,
                  child: SvgPicture.asset("assets/icons/menu.png")]
                  ),
                  SizeBox(height: 20),
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/icons/Drcorona.svg",
                          width: 230,
                          fit:BoxFit.fitWidth,
                          aligment: Aligment.topCenter,
                         ),
                         Positioned(
                           top: 20,
                           left: 150,
                           child: Text(
                           "All you need is stay at home.",
                           style: kHeadingTextStyle.copyWith(
                             color: Colors.white,
                             ),
                           ),
                         ),
                         Container(),       
                      ],
                   ),
                 ),
               ),
             ),
           ),
           Container(
             margin: EdgeInsets,symmetric(horizontal: 20),
             padding: EdgeInsets,symmetric(vertical: 10, horizontal: 20),
             height: 60,
             width: double.infinity,
             decoration: BoxDecoration(
               color: Color.white,
               borderRadius: BorderRadius.circular(25),
               border: Border.all(
                 color: Color(0xFFE5E5E5),
                 ),
               ),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset("assets/icons/maps-and-flags.svg"),
                  SizeBox(width: 20),
                  Expanded(
                    child: DropdownButton(
                    isExpanded: true,
                    underline: SizeBox(),
                    icon: SvgPicture.asset("assets/icons/dropdown.svg")
                    value"Indonesia",
                    item: ['Indonesia'. 'Banglades', 'United States', "Japan"]
                  .map<DropDownMenuItem<String>((String value){
                    return DropDownItem<String>(
                      value: value,
                      child: Text(value),
                    ),
                  }),.toList(),
                  onChanged:(value{},
                     ),
                    ),
                   ),
                 ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text "Case Update",
                               style:)]
                        ),
                      ),
                    ],
                 ),
               ],
             ),
           ),
         ],
       ),
     );
   }
 }


 class MyClipper extends CustomClipper<Path>{
   @override
   Path getClip(Size size){
     var path = Path();
     path.lineTo(0, size.height - 80);
     path.quadraticBezierTo(size.width/2, size.height, size.width, size.height - 80);
     path.lineTo(size.width, 0);
     path.close();
     return null;
   }

   @override
   bool shouldReclip(CostumClipper<Path> oldClipper){
     return false;
   }
 }