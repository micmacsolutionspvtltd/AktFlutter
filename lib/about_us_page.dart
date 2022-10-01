import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  State<AboutUsPage> createState() => _AboutUsPagedessState();
}

class _AboutUsPagedessState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ABOUT US"),
          backgroundColor: Colors.cyan,
        ),
      body: SingleChildScrollView(
        child: Column(
        children: <Widget>[
          SizedBox(height: 15,),
          Image.asset('assets/aktlogo.png', fit: BoxFit.cover),
          SizedBox(height: 15,),

         // Column(children: <Widget>[
         //  Padding(padding:EdgeInsets.all(10),
         //      child: Divider(
         //          color: Colors.black
         //      ),
         //  ),


        Padding(
            padding: EdgeInsets.only(left: 20 ,right: 20 , top: 5 , bottom: 10),
        child : Text("We are very glad and appreciate your decision in selecting our school for your child's education. We welcome you and your child to AKT MEMORIAL VIDYA SAAKET SCHOOL, the first and the best CBSE school in Kallakurichi talkuk. We are very delighted to exchange our thoughts with you." ,
        textAlign: TextAlign.center,
         style: TextStyle(
           fontWeight: FontWeight.bold
         ),
        )

         // ]),
        ),
          Padding(padding: EdgeInsets.only(left: 10,right: 10),
         child : Container(
            alignment: Alignment.center,
            height: 250,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/schoolOutSide.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
    ),
          Padding(
              padding: EdgeInsets.only(left: 20 ,right: 20 , top: 10 , bottom: 40),
              child : Text(
                  "The goal of the Academic, Training, Innovation and Research unit of Central Board of Secondary Education is to achieve academic excellence by conceptualishing policies and their operational planning to ensure balanced academic activities in the schools affiliated to the Board. The Unit strives to provide Scheme of Studies, curriculam, academic guidlines, textual material, support material, enrichment activities and capacity building programmes The unit functions according to the broader objectives set in the National Curriculam Framework and in consonance with various policies and acts passed by the Government of India from time to time",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              )

            // ]),
          ),
       ],
      ),
     ),
    );
  }
}
