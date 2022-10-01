import 'package:flutter/material.dart';

class MultipleLoginPage extends StatefulWidget {
  const MultipleLoginPage({Key? key}) : super(key: key);

  @override
  State<MultipleLoginPage> createState() => _MultipleLoginPageState();
}

class _MultipleLoginPageState extends State<MultipleLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Manage login"),
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
      padding: EdgeInsets.all(5),
      child: Container(
        // height: 100,
        //  color: Colors.orange,
        child: Column(children : <Widget>[
          Padding(padding: EdgeInsets.all(5),
            child : Text(
              "Student Name : Anisha",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(5),
            child : Text(
              "Section Name : 10 - A",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children : <Widget>[
          Container(

            child: ElevatedButton(
              child: const Text('Switch Account',
                textAlign: TextAlign.center,
              ),
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green,

            ),

          )
        ]

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

