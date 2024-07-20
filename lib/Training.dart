import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Training extends StatefulWidget {
  const Training({super.key});

  @override
  State<Training> createState() => _TrainingState();
}

class _TrainingState extends State<Training> {

  List<Map<String,String>> trainingList = [
   {
    'imageurl':'assets/training1.png',
     'trainingName':'Obedience Courses',
     'By':'By Jhon Smith',
     'rating':'4.9 (335)'

   },{
     'imageurl':'assets/training2a.png',
     'trainingName':'Specialty Classes & Workshops',
     'By':'By Duke Fuzzington',
     'rating':'5.0(500)'

   },
   {
     'imageurl':'assets/trai3.png',
     'trainingName':'Puppy Kinderganten and Playgroups',
     'By':'By Sir Fluffington',
     'rating':'5.0 (500)'

   },{
    'imageurl':'assets/trai4.png',
     'trainingName':'Canine Good Citizen Test',
     'By':'By Baron Fuzzypaws',
     'rating':'4.9(335)'

    },{
      'imageurl':'assets/trai5.png',
     'trainingName':'Theraphy Dogs',
     'By':'By Duke Fuzzington',
     'rating':'4.8(522)'

    },{
      'imageurl':'assets/training1.png',
     'trainingName':'Puppy Kindergantes and Playgroups',
     'By':'By Duke Fuzzington',
     'rating':'4.8(388)'

    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      body: 
         Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                      child: Container(
                          padding: const EdgeInsets.only(left: 4),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromRGBO(245, 146, 69, 1)),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ))),
                 
                  Expanded(
                    child: Center(
                      child: Text(
                        "Training",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(31, 32, 41, 1)),
                      ),
                    ),
                  ),
                 

                ]
              ),
               const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView.builder(
                    
                      
                      itemCount: trainingList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                            height: 122,
                            width: double.infinity,
                            padding:const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color:const  Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow:const  [
                                BoxShadow(
                                  color: Color.fromRGBO(22, 34, 51, 0.08),
                                  blurRadius: 16,
                                  spreadRadius: -4,
                                  offset: Offset(0, 8)
                                )
                              ]
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Image.asset("${trainingList[index]['imageurl']}",fit: BoxFit.cover,),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("${trainingList[index]['trainingName']}",style: GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w500,color:const Color.fromRGBO(31, 32, 41, 1)),),
                                      Text("${trainingList[index]['By']}",style: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w400,color:const Color.fromRGBO(31, 32, 41, 1)),),
                                     Row(
                                      children: [
                                       const  Icon(Icons.star_border,color: Color.fromRGBO(247, 164, 100, 1),),
                                       const SizedBox(
                                        width: 5,
                                       ),
                                                                Text("${trainingList[index]['rating']}",style: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w400,color:const Color.fromRGBO(0,0 ,0,0.5 )),)
                                                               
                                      ],
                                     )
                                                  
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        );
                      
                      },),
                  )

            ]
          ),
        )
      
      
    );
  }
}