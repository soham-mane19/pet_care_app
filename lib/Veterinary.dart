import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/Shop.dart';
import 'package:pet_care_app/dashBoard.dart';
import 'package:pet_care_app/datailDoc.dart';

// ignore: must_be_immutable
class Veterinary extends StatefulWidget {
  int index;
  Veterinary({super.key, required this.index});

  @override
  State<Veterinary> createState() => _VeterinaryState();
}

class _VeterinaryState extends State<Veterinary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 55),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "London, UK",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 0.5)),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromRGBO(245, 146, 69, 1),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(22, 34, 51, 0.08),
                          spreadRadius: -4,
                          blurRadius: 16,
                          offset: Offset(0, 8))
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Lets Find Specialist",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        Text(
                          "Doctor for Your Pet!",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 110,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage("assets/veternary1.png"),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
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
                          onTap: () {},
                          child: Image.asset("assets/vaccination.png")),
                      const SizedBox(
                        height: 8,
                      ),
                      Text("Vaccinations",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(245, 146, 69, 14)))
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Image.asset("assets/operation.png")),
                      const SizedBox(
                        height: 8,
                      ),
                      Text("Operations",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(245, 146, 69, 14)))
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Image.asset("assets/bheverials.png")),
                      const SizedBox(
                        height: 8,
                      ),
                      Text("Behaviorals",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(245, 146, 69, 14)))
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Image.asset("assets/denistry.png")),
                      const SizedBox(
                        height: 8,
                      ),
                      Text("Dentistry",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(245, 146, 69, 14)))
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("Best Specialists Nearby",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 1)))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const DetailDoc();
                  }));
                },
                child: Container(
                  height: 122,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(22, 34, 51, 0.08),
                            blurRadius: 16,
                            spreadRadius: -4,
                            offset: Offset(0, 8))
                      ]),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('assets/Dr.anna.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Dr. Anna Johanson",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 0, 0, 1))),
                          const SizedBox(
                            width: 5,
                          ),
                          Text("Veterinary Behavioral",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 0, 0, 0.6))),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_border,
                                color: Color.fromRGBO(248, 182, 131, 1),
                                size: 18,
                                weight: 18,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text("4.8",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(0, 0, 0, 6))),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                Icons.location_on_outlined,
                                color: Color.fromRGBO(248, 182, 131, 1),
                                size: 18,
                                weight: 18,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text("1 km",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(0, 0, 0, 6))),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 122,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(22, 34, 51, 0.08),
                          blurRadius: 16,
                          spreadRadius: -4,
                          offset: Offset(0, 8))
                    ]),
                child: Row(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: AssetImage('assets/Dr.vernor.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dr. Vernon Chwe",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(0, 0, 0, 1))),
                        const SizedBox(
                          width: 5,
                        ),
                        Text("Veterinary Surgery",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(0, 0, 0, 0.6))),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_border,
                              color: Color.fromRGBO(248, 182, 131, 1),
                              size: 18,
                              weight: 18,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text("4.9",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 6))),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.location_on_outlined,
                              color: Color.fromRGBO(248, 182, 131, 1),
                              size: 18,
                              weight: 18,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text("1.5 km",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 6))),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: widget.index,
          onTap: (value) {
            setState(() {
              widget.index = value;
             button();
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color.fromRGBO(245, 146, 69, 1),
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Color.fromRGBO(126, 128, 143, 1)),
            const BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: 'Service',
                backgroundColor: Color.fromRGBO(126, 128, 143, 1)),
            BottomNavigationBarItem(
                icon: Container(
                    height: 66,
                    width: 66,
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.orange),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          "Shop",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )),
                label: '',
                backgroundColor: const Color.fromRGBO(245, 146, 69, 1)),
            const BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
                backgroundColor: Color.fromRGBO(126, 128, 143, 1)),
            const BottomNavigationBarItem(
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
         return  Shop(index: widget.index,);
        }));
    }
  }
}
