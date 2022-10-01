import 'package:flutter/material.dart';
import 'package:share/share.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Circular Page"),
          backgroundColor: Colors.cyan,
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) => EventsCell()
        )
    );
  }
}

class EventsCell extends StatelessWidget {
  const EventsCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        // height: 100,
        //  color: Colors.orange,
        child: Column(children : <Widget>[


          Padding(padding: EdgeInsets.only(bottom: 10, top: 10 , right: 5 , left:  5),
            child : Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children : <Widget>[
                  Image(image: AssetImage("assets/schoolOutSide.jpg"),
                    height: 70,width: 70,
                    fit: BoxFit.fill,),
                  SizedBox(width: 20,),
                  Text(
                    "Term - I Holiday starts from daily and enddjbgk jdbgkbdagkb gkabdkgkbjdbagjb dbgjbsajgbsgjbsg fbsjdbfjasbfasbdkfj jsbfjsb",
                    textAlign: TextAlign.left,
                  //  maxLines: 2,
                    style: TextStyle(
                      fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                ]
            ),
          ),
          Container(
            width: 100,
            color: Colors.green,
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
          SizedBox(height: 10,),
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

