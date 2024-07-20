import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/Grooming.dart';
import 'package:pet_care_app/Notification.dart';
import 'package:pet_care_app/Shop.dart';
import 'package:pet_care_app/Training.dart';
import 'package:pet_care_app/Veterinary.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 55),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("assets/profile.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Sarah",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Good Morning!",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 0, 0, 0.8)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return const Notifications();
                        }));
                      },
                      child: const Icon(Icons.notifications_none)),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
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
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 110,
                width: 355,
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(22, 34, 51, 0.08),
                          blurRadius: 16,
                          spreadRadius: -4,
                          offset: Offset(0, 8))
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "In Love With Pets?",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(0, 0, 0, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Get all what you need for them",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(245, 146, 69, 1)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image.asset(
                          "assets/dash.png",
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Category",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: Text("See All",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 0, 0, 0.8))),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return  Veterinary(index: 1);
                            }));
                          },
                          child: Image.asset("assets/vetirenary.png")),
                      const SizedBox(
                        height: 8,
                      ),
                      Text("Veterinary",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 1)))
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                          onTap: () {
                             Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return const Grooming();
                            }));
                          },
                          child: Image.asset("assets/grooming.png")),
                      const SizedBox(
                        height: 8,
                      ),
                      Text("Grooming",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 1)))
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                          onTap: () {
                             Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return  Shop(index:2);
                            }));
                          },
                          child: Image.asset("assets/petStrore.png")),
                      const SizedBox(
                        height: 8,
                      ),
                      Text("Pet Store",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 1)))
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return const Training();
                            }));
                          },
                          child: Image.asset("assets/training.png")),
                      const SizedBox(
                        height: 8,
                      ),
                      Text("Training",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 1)))
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text("Event",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0, 0, 0, 1))),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 126,
                width: 355,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(22, 34, 51, 0.08),
                          offset: Offset(0, 8),
                          blurRadius: 16,
                          spreadRadius: -4),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Find and Join in Special",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(0, 0, 0, 1))),
                        Text("Events For Your Pets!",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(0, 0, 0, 1))),
                        const SizedBox(
                          height: 5,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: const MaterialStatePropertyAll(
                                    Color.fromRGBO(245, 146, 69, 1)),
                                minimumSize: const MaterialStatePropertyAll(
                                    Size(89, 34)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8)))),
                            onPressed: () {},
                            child: Text("See More",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(
                                        255, 255, 255, 1))))
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/Event.png")
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text("Community",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0, 0, 0, 1))),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 126,
                width: 355,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(22, 34, 51, 0.08),
                          offset: Offset(0, 8),
                          blurRadius: 16,
                          spreadRadius: -4),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Connect and share with ",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(0, 0, 0, 1))),
                        Text("communities! ",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(0, 0, 0, 1))),
                        const SizedBox(
                          height: 5,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: const MaterialStatePropertyAll(
                                    Color.fromRGBO(245, 146, 69, 1)),
                                minimumSize: const MaterialStatePropertyAll(
                                    Size(89, 34)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8)))),
                            onPressed: () {},
                            child: Text("See More",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(
                                        255, 255, 255, 1))))
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/community.png")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (index) {
            setState(() {
              _index = index;
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
    if(_index==0){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
         return const Dashboard();
        }));
    }else if(_index==1){
   Navigator.of(context).push(MaterialPageRoute(builder: (context){
         return  Veterinary(index: _index,);
        }));

    }else if(_index==2){
     Navigator.of(context).push(MaterialPageRoute(builder: (context){
         return    Shop(index:_index);
        }));
    }
  }
}
