import 'package:flutter/material.dart';
import 'package:share/share.dart';

class CircularPage extends StatefulWidget {
  const CircularPage({Key? key}) : super(key: key);

  @override
  State<CircularPage> createState() => _CircularPagedessState();
}

class _CircularPagedessState extends State<CircularPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Circular Page"),
    backgroundColor: Colors.cyan,
    ),
    body: ListView.builder(
    itemCount: 10,
    itemBuilder: (BuildContext context, int index) => CircularCell()
    )
    );
  }
}

class CircularCell extends StatelessWidget {
  const CircularCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
       // height: 100,
      //  color: Colors.orange,
        child: Column(children : <Widget>[
          Padding(padding: EdgeInsets.all(5),
         child : Text(
            "Term - I Holiday starts from daily and enddjbgkjdbgkbdagkbgkabdkgkbjdbagjb dbgjbsajgbsgjbsg fbsjdbfjasbfasbdkfj jsbfjsbdfjbajfbsaugfiabfjasbguegitrfherigbvkafbkb s soon so take once school will be reopens will be informed to the notification",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
    ),

          Padding(padding: EdgeInsets.only(bottom: 10, top: 10 , right: 5),
         child : Row(
            mainAxisAlignment: MainAxisAlignment.end,
              children : <Widget>[
                  Container(
                    width: 100,
                    color: Colors.black,
                    child: Text("20/03/2022",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                    ),
                    // decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(3)
                    // ),
                  ),
               SizedBox(width: 20,),
               IconButton(
                   onPressed:(){
                     Share.share('https://example.com', subject: 'Look what I made!');
                   },
                   icon: Icon(Icons.share_outlined)),
               // Image(image: AssetImage("assets/schoolOutSide.jpg"),
               // height: 20,width: 20,
               //   fit: BoxFit.fill,)
                ]
          ),
          ),
        ]

        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.orange,

        ),
      ),
    );
  }
}




