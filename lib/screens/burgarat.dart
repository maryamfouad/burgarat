import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Burgarat extends StatefulWidget {
  const Burgarat({Key? key}) : super(key: key);

  @override
  _BurgaratState createState() => _BurgaratState();
}

class _BurgaratState extends State<Burgarat> {
  var Selected;
  int counter=0;
  int foodPrice=5500;
  void _incrementCount() {
    setState(() {
      counter++;
    });
  }
  void _decrementCount() {
    setState(() {
      if (counter>0)
      counter--;
      else(counter==0);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 1100,
          width: MediaQuery.of(context).size.width,
          child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/burgaratt.jpg"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.all(2),
                      height:40,
                      width:40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                      ),
                      child: Center(
                        child: IconButton(
                            onPressed: ()=>null,
                            icon: Icon(Icons.arrow_forward, size: 28,)),
                      ),
                    ),
                    top:40 ,
                    right: 25,
                  ),
                  Positioned(
                    top: 300,
                    right: 0,
                    left: 0,
                      child: Container(
                       // margin: EdgeInsets.all(13),
                        height:3000,
                        width:MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20),),
                          color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("برجرات", style: TextStyle(
                                color:Color(0xffed8d0e),
                                fontSize: 28,
                                fontWeight: FontWeight.bold
                              ),),
                              Padding(padding: EdgeInsets.only(bottom: 15)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Text("جيد جدا" , style: TextStyle(
                                  color:Colors.black54,
                              ),
                              ),

                                      Icon(Icons.tag_faces, size: 20, color: Colors.black54,)
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 25)),
                                  Row(
                                    children: [
                                      Text("سعر التوصيل : 1500 د.ع", style: TextStyle(
                                    color:Colors.black54,
                                  ),
                                  ),
                                      Icon(Icons.delivery_dining , size: 22, color: Colors.black54,)
                                    ],
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 10)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Text("الحد الادنى للطلب :5000 د.ع" , style: TextStyle(
                                        color:Colors.black54,
                                      ),
                                      ),

                                      Icon(Icons.remove_circle_outline, size: 20, color: Colors.black54,)
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 111.5)),
                                  Row(
                                    children: [
                                      Text("الجادرية", style: TextStyle(
                                        color:Colors.black54,
                                      ),
                                      ),
                                      Icon(Icons.location_on_outlined , size: 20, color: Colors.black54,)
                                    ],
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 10)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("وقت التوصيل المتوقع من نصف ساعة الى ساعة", style: TextStyle(
                                    color:Colors.black54,
                                  ),
                                  ),
                                  Icon(Icons.watch_later_outlined , size: 20, color: Colors.black54,)
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 20)),
                              Text("همبركر لحم بالجبن", style: TextStyle(
                                  color:Color(0xffed8d0e),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold
                              ),),
                              Padding(padding: EdgeInsets.only(bottom: 20)),
                                  Container(
                                    height: 60,
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                   child: Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                     child: DropdownButton(
                                        hint: Text("اختياري"),
                                        items: ["Extra cheese" , "Low Carp" , "Keto diet" , "Double"]
                                            .map((e) => DropdownMenuItem(
                                            child: Text("$e"),
                                        value: e,))
                                          .toList(),
                                        onChanged: (val){
                                          setState(() {
                                            Selected=val;
                                          });
                                        },
                                      ),
                                   ),
                                  ),
                              Padding(padding: EdgeInsets.only(bottom: 12)),
                              Text("تعليمات خاصة" , style: TextStyle(fontSize: 20),),
                              Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: TextFormField(
                                    enabled: true,
                                    decoration: InputDecoration(
                                      hintText: "اذا كانت لديك اي تعليمات اضافية تخص الطلب يرجى كتابتها هنا",
                                      hintTextDirection: TextDirection.rtl,

                                    ),
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 50)),
                              Center(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      child: IconButton(onPressed:_incrementCount
                                      , icon: Icon(Icons.add , color: Colors.black,size: 30,)
                                      ),
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          color: Colors.grey[200]
                                      ),
                                    ),
                                    Container(
                                     height: 40,
                                     width: 130,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.grey.shade300.withOpacity(1.0)
                                      ),
                                      child: Center(
                                        child: Text("${counter}" , style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                        ),),
                                      ),
                                    ),
                                    Container(
                                      child: IconButton(onPressed: _decrementCount
                                          , icon: Icon(Icons.remove , color: Colors.black,size: 30,)
                                      ),
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          color: Colors.grey[200]
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 20)),
                              Center(
                                child: Text( "   ${foodPrice * counter} " + " د.ع"  , style: TextStyle(
                                    color: Color(0xffed8d0e),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),),
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 50)),
                              Center(
                                  child: ElevatedButton(onPressed: (){},
                                      child: Text("اضافة الى السلة" ),

                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xffed8d0e).withOpacity(1),
                                      textStyle: TextStyle(
                                        fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                      minimumSize: Size(MediaQuery.of(context).size.width-40 , 50),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                      padding: EdgeInsets.all(15),
                                    ),
                                  ),

                                  ),



                            ],
                          ),
                        ),
                      ),

                  ),

                ],
              ),

        ),
      ),
    );
  }
}
