import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/Veterinary.dart';
import 'package:pet_care_app/dashBoard.dart';

// ignore: must_be_immutable
class Shop extends StatefulWidget {
  int index;
   Shop({super.key, required this.index});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor:const  Color.fromRGBO(245, 245, 247, 1),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                padding:const  EdgeInsets.only(top: 50,left: 25,right: 25),
                decoration:const  BoxDecoration(
                  color: Color.fromRGBO(245, 146, 69, 1),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32),bottomRight:Radius.circular(32))
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                  "Hello Sarah",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color:const Color.fromRGBO(255, 255, 255, 1)
                    ),
                ),
                  Text(
                  "Find your lovable Pets",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color:const Color.fromRGBO(255, 255, 255, 1)
                    ),
                ),
                      ],
                    ),
                    const Spacer(),
                   const  Icon(Icons.shopping_cart_outlined,color: Color.fromRGBO(255, 255, 255, 1),weight: 40,size: 35,)
                  ],
                ),
              ),
          Positioned(
            top: 130,
            left: 33,
            right: 33,
            child: Container(
              height: 40,
             
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromRGBO(255, 255, 255, 1),
                  hintText: 'search',
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 0.8)),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromRGBO(250, 200, 162, 1))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromRGBO(250, 200, 162, 1))),
                ),
              ),
            ),
            ),
          
            ],
          ),
          const SizedBox(
            height: 40,
          ),
           Padding(padding:const  EdgeInsets.only(left: 25,right: 25,top: 30,),
          child: Row(
            children: [
             Column(
             
              children: [
                Stack(
                  clipBehavior: Clip.none,
                 
                  children: [
                    Container(
                      width: 155,
                      height: 175,

                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromRGBO(245, 146, 69, 1),width: 10,),
                     borderRadius: BorderRadius.circular(8),
                    


                      ),
                      child: Image.asset("assets/shop2.png"),
                    ),
                    Positioned(
                      top: 30,
                      
                      child: Container(
                      height: 29,
                      width: 106,
                      alignment: Alignment.center,
                      decoration:const  BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50)),
                        color: Color.fromRGBO(245, 245, 247, 1)
                      ),
                    child: Text("Pets",style: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w500,color:Color.fromRGBO(245, 146, 69, 1)),),
                    )
                    
                    )

                  ],
                ),
                 const SizedBox(
                  height: 10,
                 ),
                 Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 155,
                      height: 175,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromRGBO(245, 146, 69, 1),width: 10,),
                     borderRadius: BorderRadius.circular(8),
                    


                      ),
                      child: Image.asset("assets/shop6.png"),
                    ),
                    Positioned(
                      top: 30,
                      
                      child: Container(
                      height: 29,
                      width: 106,
                      alignment: Alignment.center,
                      decoration:const  BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50)),
                        color: Color.fromRGBO(245, 245, 247, 1)
                      ),
                    child: Text("Healthy",style: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w500,color:Color.fromRGBO(245, 146, 69, 1)),),
                    )
                    
                    )

                  ],
                ),
                const SizedBox(
                  height: 10,
                 ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 153,
                      height: 149,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromRGBO(245, 146, 69, 1),width: 10,),
                     borderRadius: BorderRadius.circular(8),
                    


                      ),
                      child: Image.asset("assets/shop4.png"),
                    ),
                    Positioned(
                      top: 30,
                      
                      child: Container(
                      height: 29,
                      width: 106,
                      alignment: Alignment.center,
                      decoration:const  BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50)),
                        color: Color.fromRGBO(245, 245, 247, 1)
                      ),
                    child: Text("Accessories",style: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w500,color:Color.fromRGBO(245, 146, 69, 1)),),
                    )
                    
                    )

                  ],
                ),
              ],
             ),
          const Spacer(),
            Column(
             
              children: [
                Stack(
                  clipBehavior: Clip.none,
                 
                  children: [
                    Container(
                      width: 154,
                      height: 149,

                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromRGBO(245, 146, 69, 1),width: 10,),
                     borderRadius: BorderRadius.circular(8),
                    


                      ),
                      child: Image.asset("assets/shop1.png"),
                    ),
                    Positioned(
                      top: 30,
                      
                      child: Container(
                      height: 29,
                      width: 106,
                      alignment: Alignment.center,
                      decoration:const  BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50)),
                        color: Color.fromRGBO(245, 245, 247, 1)
                      ),
                    child: Text("Foods",style: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w500,color:Color.fromRGBO(245, 146, 69, 1)),),
                    )
                    
                    )

                  ],
                ),
                 const SizedBox(
                  height: 10,
                 ),
                 Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 154,
                      height: 197,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromRGBO(245, 146, 69, 1),width: 10,),
                     borderRadius: BorderRadius.circular(8),
                    


                      ),
                      child: Image.asset("assets/shop5.png"),
                    ),
                    Positioned(
                      top: 30,
                      
                      child: Container(
                      height: 29,
                      width: 106,
                      alignment: Alignment.center,
                      decoration:const  BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50)),
                        color: Color.fromRGBO(245, 245, 247, 1)
                      ),
                    child: Text("Toys",style: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w500,color:Color.fromRGBO(245, 146, 69, 1)),),
                    )
                    
                    )

                  ],
                ),
                const SizedBox(
                  height: 10,
                 ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 153,
                      height: 149,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromRGBO(245, 146, 69, 1),width: 10,),
                     borderRadius: BorderRadius.circular(8),
                    


                      ),
                      child: Image.asset("assets/shop3.png"),
                    ),
                    Positioned(
                      top: 30,
                      
                      child: Container(
                      height: 29,
                      width: 106,
                      alignment: Alignment.center,
                      decoration:const  BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50)),
                        color: Color.fromRGBO(245, 245, 247, 1)
                      ),
                    child: Text("Cloths",style: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w500,color:Color.fromRGBO(245, 146, 69, 1)),),
                    )
                    
                    )

                  ],
                ),
              ],
             )
            ],
            
           
          ),
          )

        ],
      ),
       bottomNavigationBar: BottomNavigationBar(
          currentIndex: widget.index,
          onTap: (index) {
            setState(() {
              widget.index = index;
             button();
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color.fromRGBO(245, 146, 69, 1),
          items: [
         const    BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Color.fromRGBO(126, 128, 143, 1)),
           const  BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: 'Service',
                backgroundColor: Color.fromRGBO(126, 128, 143, 1)),
            BottomNavigationBarItem(
                icon: Container(
                    height: 66,
                    width: 66,
                    padding:  const EdgeInsets.all(8.0),
                    decoration:  const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.orange),
                    child: const  Column(
                      children: [
                         Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                        Text("Shop",style: TextStyle(color: Colors.white),)
                      ],
                    )),
               label: '',
                backgroundColor: const Color.fromRGBO(245, 146, 69, 1)),
         const    BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
                backgroundColor: Color.fromRGBO(126, 128, 143, 1)),
          const   BottomNavigationBarItem(
               icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Color.fromRGBO(126, 128, 143, 1)),
          ]),
    );
  }
  
  void button() {
    if(widget.index==0){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
         return const Dashboard();
        }));
    }else if(widget.index==1){
   Navigator.of(context).push(MaterialPageRoute(builder: (context){
         return  Veterinary(index: widget.index,);
        }));

    }else if(widget.index==2){
     Navigator.of(context).push(MaterialPageRoute(builder: (context){
         return    Shop(index: widget.index,);
        }));
    }
  }
}