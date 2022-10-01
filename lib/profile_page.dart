import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("PROFILE PAGE"),
          backgroundColor: Colors.cyan,
        ),
        body: SingleChildScrollView(
            child: Wrap(
              spacing: 50,
          children: <Widget>[
            // SizedBox(
            //     width: (MediaQuery.of(context).size.width),
            //     height: 200,
            //     color: Colors.orange,
            Container(
              width: (MediaQuery.of(context).size.width),
              height: 200,
              color: Colors.orange,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(50), // Image radius
                      child: Image.asset('assets/backGroundImage.png', fit: BoxFit.cover),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 10.0),
                  //   child: Image.asset('assets/backGroundImage.png',
                  //       height: 100, width: 100),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Name",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                      // Text(
                      //   "Standard",
                      //   textAlign: TextAlign.left,
                      //   style: TextStyle(
                      //       color: Colors.white, fontWeight: FontWeight.w800),
                      // )
                    ],
                  )
                ],
              ),
              // )
            ),

            // Padding(padding: EdgeInsets.all(20),
            // child:  ProfileListValues(tittle : "Father Name" , names : "Testing"),
            // )
            ProfileListValues(tittle : "Father Name" , names : "Testing"),
            ProfileListValues(tittle : "Father Name" , names : "Testing"),
            ProfileListValues(tittle : "Father Name" , names : "Testing"),
            ProfileListValues(tittle : "Father Name" , names : "Testing"),
            ProfileListValues(tittle : "Father Name" , names : "Testing"),
            ProfileListValues(tittle : "Father Name" , names : "Testing"),
            ProfileListValues(tittle : "Father Name" , names : "Testing"),
            ProfileListValues(tittle : "Father Name" , names : "Testing"),
          ],
        )));
  }
}


class ProfileListValues extends StatefulWidget {
  final String tittle;
  final String names;
  const ProfileListValues({Key? key , required this.tittle , required this.names}) : super(key: key);

  @override
  State<ProfileListValues> createState() => _ProfileListValuesState();
}

class _ProfileListValuesState extends State<ProfileListValues> {
 // String tittle;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),
     child : Container(
      child: Column(children: <Widget>[
        Row(children: <Widget>[

          ClipOval(
            child: SizedBox.fromSize(
              size: Size.fromRadius(25), // Image radius
              child: Image.asset('assets/backGroundImage.png', fit: BoxFit.cover),
            ),
          ),
          SizedBox(width : 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.tittle,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                widget.names,
                textAlign: TextAlign.left,

              )
            ],
          )
        ]),
        Divider(color: Colors.black.withOpacity(0.3),)
      ]),
    )
    );
  }
}
//
//
// class ProfileListValues extends StatelessWidget {
//   const ProfileListValues({Key key, this.tittle, this.names}) : super(key: key);
//
//  // const ProfileListValues({Key? key, required this.tittle, required this.names}) : super(key: key);
// //String tittle = "Fathers Name";
//   final String tittle;
//   final Function names;
//   @override
//   Widget build(BuildContext context) {
//     String tittle ;
//     return Container(
//       child: Column(children: <Widget>[
//         Row(children: <Widget>[
//
//           ClipOval(
//             child: SizedBox.fromSize(
//               size: Size.fromRadius(25), // Image radius
//               child: Image.asset('assets/backGroundImage.png', fit: BoxFit.cover),
//             ),
//           ),
//           SizedBox(width : 30),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 tittle,
//                 textAlign: TextAlign.left,
//
//
//               ),
//               Text(
//                 "Standard",
//                 textAlign: TextAlign.left,
//
//               )
//             ],
//           )
//         ])
//       ]),
//     );
//   }
// }
// //